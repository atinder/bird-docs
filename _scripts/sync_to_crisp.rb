require 'yaml'
require 'json'
require 'net/http'
require 'uri'
require 'find'
require 'dotenv'
require 'base64'
require 'open-uri'

# Load environment variables from .env file
Dotenv.load if File.exist?('.env')

CRISP_IDENTIFIER = ENV['CRISP_IDENTIFIER']
CRISP_KEY = ENV['CRISP_KEY']
WEBSITE_ID = ENV['CRISP_WEBSITE_ID']

# Verify environment variables are loaded
puts "CRISP_IDENTIFIER present: #{!CRISP_IDENTIFIER.nil? && !CRISP_IDENTIFIER.empty?}"
puts "CRISP_KEY present: #{!CRISP_KEY.nil? && !CRISP_KEY.empty?}"
puts "WEBSITE_ID present: #{!WEBSITE_ID.nil? && !WEBSITE_ID.empty?}"

if CRISP_IDENTIFIER.nil? || CRISP_IDENTIFIER.empty? || 
   CRISP_KEY.nil? || CRISP_KEY.empty? || 
   WEBSITE_ID.nil? || WEBSITE_ID.empty?
  puts "Error: Required environment variables CRISP_IDENTIFIER, CRISP_KEY and WEBSITE_ID must be set as environment variables or in .env file"
  exit 1
end

def get_changed_files
  # disabled automated deploy to crisp
  return [] 
  # Use GitHub API if running in a PR context
  if ENV['GITHUB_EVENT_PATH'] && File.exist?(ENV['GITHUB_EVENT_PATH'])
    event = JSON.parse(File.read(ENV['GITHUB_EVENT_PATH']))
    if event['pull_request']
      pr_number = event['pull_request']['number']
      repo = ENV['GITHUB_REPOSITORY']
      token = ENV['GITHUB_TOKEN'] || ENV['CRISP_KEY'] # Use a GitHub token with repo read access
      url = "https://api.github.com/repos/#{repo}/pulls/#{pr_number}/files"
      files = []
      page = 1
      loop do
        api_url = "#{url}?page=#{page}&per_page=100"
        cmd = "curl -s -H 'Authorization: token #{token}' '#{api_url}'"
        response = `#{cmd}`
        pr_files = JSON.parse(response)
        break if pr_files.empty?
        files += pr_files.map { |f| f['filename'] }
        page += 1
      end
      return files.select { |file| file.start_with?('docs/') && file.end_with?('.md') }
    end
  end
  # Fallback to previous logic
  if ENV['GITHUB_SHA']
    parents = `git show --no-patch --format=%P #{ENV['GITHUB_SHA']}`.strip.split
    if parents.length > 1
      changed_files = `git diff --name-only #{parents[0]} #{ENV['GITHUB_SHA']}`.split("\n")
    else
      changed_files = `git diff-tree --no-commit-id --name-only -r #{ENV['GITHUB_SHA']}`.split("\n")
    end
  else
    latest_commit = `git rev-parse HEAD`.strip
    begin
      parent_commit = `git rev-parse HEAD^`.strip
      changed_files = `git diff --name-only #{parent_commit} #{latest_commit}`.split("\n")
    rescue
      changed_files = `git show --name-only --pretty="" #{latest_commit}`.split("\n")
    end
  end
  changed_files.select { |file| file.start_with?('docs/') && file.end_with?('.md') }
end

def get_file_last_modified_time(path, since_timestamp = nil)
  # Get all commits that modified this file since the last sync
  if since_timestamp
    # Convert milliseconds to seconds for git log
    since_seconds = since_timestamp.to_i / 1000
    commits = `git log --format=%ct --since="#{since_seconds}" -- "#{path}"`.strip.split("\n")
  else
    commits = `git log --format=%ct -- "#{path}"`.strip.split("\n")
  end

  # Return the most recent commit timestamp, or 0 if no commits found
  commits.empty? ? 0 : commits.first.to_i * 1000  # Convert to milliseconds
end

def get_crisp_article_content(article_id)
  uri = URI("https://api.crisp.chat/v1/website/#{WEBSITE_ID}/helpdesk/locale/en-US/article/#{article_id}")
  req = Net::HTTP::Get.new(uri)
  req['X-Crisp-Tier'] = 'plugin'
  req['Authorization'] = "Basic #{Base64.strict_encode64("#{CRISP_IDENTIFIER}:#{CRISP_KEY}")}"  
  res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(req) }
  return nil unless res.code.to_i == 200
  json = JSON.parse(res.body) rescue nil
  json && json['data'] && json['data']['content'] ? json['data']['content'] : nil
end

def put_article(id, content_markdown, title, crisp_updated_at, path)
  # Get file's last commit time, considering all commits since last sync
  file_updated_at = get_file_last_modified_time(path, crisp_updated_at)

  # Skip if file hasn't been modified since last sync
  if crisp_updated_at && file_updated_at <= crisp_updated_at.to_i
    puts "Skipping #{path} - no changes since last sync (last commit: #{Time.at(file_updated_at/1000)}, last sync: #{Time.at(crisp_updated_at.to_i/1000)})"
    return true
  end

  # Fetch current content from Crisp and compare
  current_crisp_content = get_crisp_article_content(id)
  if current_crisp_content && current_crisp_content.rstrip == content_markdown.rstrip
    puts "Skipping #{path} - content is identical to Crisp, no update needed."
    return true
  end

  puts "\n=== Testing put_article ==="
  puts "Article ID: #{id}"
  puts "Title: #{title}"
  puts "Path: #{path}"
  puts "Last commit: #{Time.at(file_updated_at/1000)}"
  puts "Last sync: #{crisp_updated_at ? Time.at(crisp_updated_at.to_i/1000) : 'never'}"

  # Process content to remove raw tags from code blocks
  content = content_markdown.dup

  # Log original JSON code blocks
  puts "\nOriginal JSON code blocks:"
  content.scan(/```json\n(.*?)```\n/m) do |code_block|
    puts "\nFound JSON code block:"
    puts "Content: #{code_block[0].inspect}"
    puts "Contains raw tags: #{code_block[0].include?('{% raw %}')}"
  end

  # Handle triple backtick code blocks
  content.gsub!(/```((?:json|javascript|html|liquid|ruby))\n{% raw %}\n(.*?){% endraw %}\n```\n/m) do |match|
    language = $1
    code_block = $2
    "```#{language}\n#{code_block.strip}\n```\n"
  end

  # Handle single backtick code blocks
  content.gsub!(/`{% raw %}(.*?){% endraw %}`/) do |match|
    code_block = $1
    "`#{code_block}`"
  end

  # Remove any remaining raw tags (cleanup)
  content.gsub!(/{% raw %}/, '')
  content.gsub!(/{% endraw %}/, '')

  # Log processed JSON code blocks
  puts "\nProcessed JSON code blocks:"
  content.scan(/```json\n(.*?)```\n/m) do |code_block|
    puts "\nFound JSON code block:"
    puts "Content: #{code_block[0].inspect}"
    puts "Contains raw tags: #{code_block[0].include?('{% raw %}')}"
  end

  puts "\n=== End Test ===\n"
  
  # Early return for testing - comment this out to make actual API calls
  # return true

  # Using 'en-US' as the locale
  uri = URI("https://api.crisp.chat/v1/website/#{WEBSITE_ID}/helpdesk/locale/en-US/article/#{id}")
  req = Net::HTTP::Patch.new(uri)
  req['X-Crisp-Tier'] = 'plugin'
  req['Authorization'] = "Basic #{Base64.strict_encode64("#{CRISP_IDENTIFIER}:#{CRISP_KEY}")}"
  req['Content-Type'] = 'application/json'
  
  # Get the description from the frontmatter
  meta, _ = extract_frontmatter_and_content(path)
  description = meta['description']

  req.body = {
    content: content,
    description: description
  }.to_json

  puts "Making PATCH request to: #{uri}"
  puts "Headers: #{req.to_hash}"
  puts "Body: #{req.body}"
  
  res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(req) }
  puts "Response status: #{res.code}"
  puts "Response body: #{res.body}"
  
  if res.code.to_i >= 400
    puts "Error: API request failed with status #{res.code}"
    return false
  end
  
  true
end

def extract_frontmatter_and_content(path)
  content = File.read(path)
  puts "Raw file content length: #{content.length}"
  if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
    meta = YAML.safe_load($1)
    body = content.split(/---\s*\n/, 3).last.to_s
    puts "Extracted body length: #{body.length}"
    puts "First few lines of body:"
    puts body.lines[0..5]
    [meta, body]
  else
    [{}, content]
  end
end

# Get changed files
changed_files = get_changed_files
puts "Found #{changed_files.length} changed markdown files in the latest commit"

# Process only changed files
updated_crisp_urls = []
changed_files.each do |path|
  puts "Processing #{path}..."
  meta, body_md = extract_frontmatter_and_content(path)
  next unless meta['id']
  
  success = put_article(meta['id'], body_md, meta['title'], meta['crisp_updated_at'], path)
  puts success ? "Successfully updated #{path}" : "Failed to update #{path}"

  # Collect crisp_url if update was successful
  if success && meta['crisp_url']
    updated_crisp_urls << meta['crisp_url']
  end
end

# Post a single Slack message with all updated URLs
if updated_crisp_urls.any? && ENV['SLACK_WEBHOOK']
  slack_message = {
    channel: '#product-support',
    text: "Articles updated:\n" + updated_crisp_urls.map { |url| "<#{url}>" }.join("\n")
  }
  uri = URI(ENV['SLACK_WEBHOOK'])
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = (uri.scheme == 'https')
  req = Net::HTTP::Post.new(uri.path)
  req['Content-Type'] = 'application/json'
  req.body = slack_message.to_json
  begin
    res = http.request(req)
    puts "Posted to Slack: #{res.code}"
  rescue => e
    puts "Error posting to Slack: #{e}"
  end
end
