require 'yaml'
require 'json'
require 'net/http'
require 'uri'
require 'find'
require 'dotenv'
require 'base64'

# Load environment variables from .env file
Dotenv.load

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
  puts "Error: Required environment variables CRISP_IDENTIFIER, CRISP_KEY and WEBSITE_ID must be set in .env file"
  exit 1
end

def get_changed_files
  # For testing - return only the test article
  # return ['docs/uncategorized/general/configure-pickup-rates_nitin-b98ff675-af78-4b26-ac84-250a455f040f.md']
  
  # Check if we're running in GitHub Actions
  if ENV['GITHUB_SHA']
    # Get files changed in the commit that triggered the workflow
    changed_files = `git diff-tree --no-commit-id --name-only -r #{ENV['GITHUB_SHA']}`.split("\n")
  else
    # Get files changed in the latest commit (for local testing)
    latest_commit = `git rev-parse HEAD`.strip
    parent_commit = `git rev-parse HEAD^`.strip
    changed_files = `git diff --name-only #{parent_commit} #{latest_commit}`.split("\n")
  end
  
  # Filter for only markdown files in the docs directory
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

def put_article(id, content_markdown, title, crisp_updated_at, path)
  # Get file's last commit time, considering all commits since last sync
  file_updated_at = get_file_last_modified_time(path, crisp_updated_at)

  # Skip if file hasn't been modified since last sync
  if crisp_updated_at && file_updated_at <= crisp_updated_at.to_i
    puts "Skipping #{path} - no changes since last sync (last commit: #{Time.at(file_updated_at/1000)}, last sync: #{Time.at(crisp_updated_at.to_i/1000)})"
    return true
  end

  puts "Updating #{path} - last commit: #{Time.at(file_updated_at/1000)}, last sync: #{crisp_updated_at ? Time.at(crisp_updated_at.to_i/1000) : 'never'}"

  # Using 'en-US' as the locale
  uri = URI("https://api.crisp.chat/v1/website/#{WEBSITE_ID}/helpdesk/locale/en-US/article/#{id}")
  req = Net::HTTP::Patch.new(uri)
  req['X-Crisp-Tier'] = 'plugin'
  req['Authorization'] = "Basic #{Base64.strict_encode64("#{CRISP_IDENTIFIER}:#{CRISP_KEY}")}"
  req['Content-Type'] = 'application/json'
  req.body = {
    content: content_markdown
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
changed_files.each do |path|
  puts "Processing #{path}..."
  meta, body_md = extract_frontmatter_and_content(path)
  next unless meta['id']
  
  success = put_article(meta['id'], body_md, meta['title'], meta['crisp_updated_at'], path)
  puts success ? "Successfully updated #{path}" : "Failed to update #{path}"
end
