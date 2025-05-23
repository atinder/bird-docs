require 'net/http'
require 'json'
require 'fileutils'
require 'uri'
require 'dotenv'
require 'base64'
require 'byebug'
require 'yaml'
require 'find'

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

BASE_DIR = './docs'

def request(path, method = :get, data = {})
  uri = URI("https://api.crisp.chat/v1/#{path}")
  req = method == :get ? Net::HTTP::Get.new(uri) : Net::HTTP::Post.new(uri)
  req['X-Crisp-Tier'] = 'plugin'
  req['Authorization'] = "Basic #{Base64.strict_encode64("#{CRISP_IDENTIFIER}:#{CRISP_KEY}")}"
  
  if method == :post
    req['Content-Type'] = 'application/json'
    req.body = data.to_json
  end
  
  puts "Making #{method.upcase} request to: #{uri}"
  puts "Headers: #{req.to_hash}"
  puts "Body: #{req.body}" if method == :post
  res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) { |http| http.request(req) }
  puts "Response status: #{res.code}"
  puts "Response body: #{res.body}"
  
  if res.code.to_i >= 400
    puts "Error: API request failed with status #{res.code}"
    return nil
  end
  
  JSON.parse(res.body)
end

def slugify(text)
  text.downcase.strip.gsub(/[^\w\s-]/, '').gsub(/\s+/, '-')
end

def write_article(category_slug, section_slug, article)
  # Create directory if it doesn't exist
  dir = File.join(BASE_DIR, category_slug, section_slug)
  FileUtils.mkdir_p(dir)

  # Process content to wrap code blocks with raw tags
  content = article['content'].to_s.strip

  puts "\n=== Processing article: #{article['title']} ==="
  puts "Initial content length: #{content.length}"

  # Handle triple backtick code blocks
  content.gsub!(/```json\n(.*?)```\n/m) do |match|
    code_block = $1
    puts "\nFound JSON code block:"
    puts "Original block: #{match.inspect}"
    puts "Code content: #{code_block.inspect}"
    # Ensure raw tags are inside the code block
    if code_block.include?("{% raw %}")
      result = "```json\n#{code_block.strip}\n```\n"
    else
      result = "```json\n{% raw %}\n#{code_block.strip}\n{% endraw %}\n```\n"
    end
    puts "Processed block: #{result.inspect}"
    result
  end

  # Handle other code blocks with Liquid syntax
  content.gsub!(/```((?:javascript|html|liquid|ruby))\n(.*?)```\n/m) do |match|
    language = $1
    code_block = $2
    puts "\nFound #{language} code block:"
    puts "Original block: #{match.inspect}"
    puts "Code content: #{code_block.inspect}"
    if code_block.match?(/{%|{{|}}|%}/)
      result = "```#{language}\n{% raw %}\n#{code_block.strip}\n{% endraw %}\n```\n"
      puts "Block contains Liquid syntax, processed: #{result.inspect}"
      result
    else
      puts "Block does not contain Liquid syntax, keeping as is"
      match
    end
  end

  # Handle single backtick code blocks containing Liquid syntax
  content.gsub!(/`([^`]*(?:{%[^`]*%}|{{[^`]*}})[^`]*)`/) do |match|
    code_block = $1
    if code_block.include?("{% raw %}")
      match
    else
      "`{% raw %}#{code_block}{% endraw %}`"
    end
  end

  # Remove any double raw tags that might have been created
  content.gsub!(/{% raw %}{% raw %}/, '{% raw %}')
  content.gsub!(/{% endraw %}{% endraw %}/, '{% endraw %}')

  # Remove any empty raw tags
  content.gsub!(/{% raw %}[\s\n]*{% endraw %}/, '')

  # Write article to markdown file
  file_path = File.join(dir, "#{slugify(article['title'])}-#{article['article_id']}.md")

  # Safely escape double quotes in description
  description = article['description'].to_s.gsub('"', '\\"')

  content = <<~MARKDOWN
    ---
    id: #{article['article_id']}
    title: "#{article['title']}"
    category: #{category_slug}
    section: #{section_slug}
    slug: #{slugify(article['title'])}
    crisp_updated_at: #{article['updated_at']}
    crisp_url: #{article['url']}
    description: "#{description}"
    ---

    #{content}
  MARKDOWN

  File.write(file_path, content)
  puts "Wrote article: #{file_path}"
  puts "Content length: #{content.length} characters"
end

def get_article_content(locale, article_id)
  article = request("website/#{WEBSITE_ID}/helpdesk/locale/#{locale}/article/#{article_id}")
  puts "Article content response for #{article_id}: #{article.inspect}"
  return nil unless article && article['data']
  article['data']
end

def get_all_articles(locale)
  all_articles = []
  page = 1
  
  loop do
    # Build the URL with the correct structure and parameters
    path = "website/#{WEBSITE_ID}/helpdesk/locale/#{locale}/articles/#{page}"
    articles = request(path)
    break unless articles && articles['data'].is_a?(Array)
    
    all_articles.concat(articles['data'])
    puts "Fetched page #{page} with #{articles['data'].length} articles"
    
    # If we got no articles, we've reached the end
    break if articles['data'].empty?
    page += 1
  end
  
  all_articles
end

def sync_all
  # First get the helpdesk locales
  locales = request("website/#{WEBSITE_ID}/helpdesk/locales")
  return if locales.nil?
  
  # Use the first available locale
  locale_data = locales['data'].first
  if locale_data.nil?
    puts "Error: No locales found for helpdesk"
    return
  end
  
  locale = locale_data['locale']
  puts "Using locale: #{locale}"
  
  # Get all categories
  categories = request("website/#{WEBSITE_ID}/helpdesk/locale/#{locale}/categories")
  puts "Categories response: #{categories.inspect}"
  return unless categories['data'].is_a?(Array)
  
  # Get all articles with pagination
  all_articles = get_all_articles(locale)
  puts "Articles response: #{all_articles.inspect}"
  return unless all_articles.is_a?(Array)

  # --- Begin: Remove local files for deleted Crisp articles ---
  crisp_ids = all_articles.map { |a| a['article_id'] || a['id'] }.compact.to_set
  Find.find(BASE_DIR) do |path|
    next unless path.end_with?('.md')
    begin
      content = File.read(path)
      if content =~ /\Aid: (.+)/
        local_id = $1.strip.gsub('"', '').gsub("'", '')
        unless crisp_ids.include?(local_id)
          puts "Deleting local file for missing Crisp article: #{path}"
          File.delete(path)
        end
      end
    rescue => e
      puts "Error reading #{path}: #{e}"
    end
  end
  # --- End: Remove local files for deleted Crisp articles ---
  
  puts "\n=== Article Counts ==="
  puts "Total articles from API: #{all_articles.length}"
  puts "Article status breakdown:"
  status_counts = all_articles.group_by { |a| a['status'] }.transform_values(&:length)
  status_counts.each { |status, count| puts "  #{status}: #{count}" }
  puts "Article visibility breakdown:"
  visibility_counts = all_articles.group_by { |a| a['visibility'] }.transform_values(&:length)
  visibility_counts.each { |visibility, count| puts "  #{visibility}: #{count}" }
  
  categories['data'].each do |cat|
    category_slug = slugify(cat['name'])
    
    # Handle articles that belong directly to the category (no section)
    category_articles = all_articles.select do |art| 
      art['category']&.dig('category_id') == cat['category_id'] && 
      art['category']&.dig('section').nil?
    end
    
    puts "\nCategory: #{cat['name']}"
    puts "Articles in category (no section): #{category_articles.length}"
    puts "Category articles status breakdown:"
    status_counts = category_articles.group_by { |a| a['status'] }.transform_values(&:length)
    status_counts.each { |status, count| puts "  #{status}: #{count}" }
    
    category_articles.each do |art|
      # Get full article content
      full_article = get_article_content(locale, art['article_id'])
      next unless full_article

      # Merge all keys from art and full_article, with full_article taking precedence
      merged_article = art.merge(full_article)
      write_article(category_slug, 'general', merged_article)
    end
    
    # Handle articles in sections
    sections = request("website/#{WEBSITE_ID}/helpdesk/locale/#{locale}/category/#{cat['category_id']}/sections")
    puts "Sections response: #{sections.inspect}"
    next unless sections['data'].is_a?(Array)
    
    sections['data'].each do |sec|
      section_slug = slugify(sec['name'])
      
      # Filter articles for this section
      section_articles = all_articles.select do |art| 
        art['category']&.dig('section', 'section_id') == sec['section_id']
      end
      
      puts "Section: #{sec['name']}"
      puts "Articles in section: #{section_articles.length}"
      puts "Section articles status breakdown:"
      status_counts = section_articles.group_by { |a| a['status'] }.transform_values(&:length)
      status_counts.each { |status, count| puts "  #{status}: #{count}" }
      
      section_articles.each do |art|
        # Get full article content
        full_article = get_article_content(locale, art['article_id'])
        next unless full_article

        # Merge all keys from art and full_article, with full_article taking precedence
        merged_article = art.merge(full_article)
        write_article(category_slug, section_slug, merged_article)
      end
    end
  end
  
  # Handle articles without a category
  uncategorized_articles = all_articles.select { |art| art['category'].nil? }
  puts "\nUncategorized articles: #{uncategorized_articles.length}"
  puts "Uncategorized articles status breakdown:"
  status_counts = uncategorized_articles.group_by { |a| a['status'] }.transform_values(&:length)
  status_counts.each { |status, count| puts "  #{status}: #{count}" }
  
  uncategorized_articles.each do |art|
    # Get full article content
    full_article = get_article_content(locale, art['article_id'])
    next unless full_article

    # Merge all keys from art and full_article, with full_article taking precedence
    merged_article = art.merge(full_article)
    write_article('uncategorized', 'general', merged_article)
  end
end

sync_all
