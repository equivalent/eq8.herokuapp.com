source 'https://rubygems.org'

ruby '2.3.3'

group :production do
  gem 'rails_12factor'
  gem 'dalli'
  gem 'memcachier'
end

gem 'rack-rewrite'

gem 'rails', '4.2.5'

# DRY flash messages
gem 'responders'

#prism js  syntax highlight
gem 'redcarpet_markdown_to_prismjs', '0.0.2', github: 'equivalent/redcarpet_markdown_to_prismjs'

# silence logs
gem 'quiet_assets', :group => :development
gem 'pry', :group => [:development, :test]

# Use SCSS for stylesheets
gem 'sass-rails'

# haml markup
gem 'haml-rails'

# foundation looks
gem 'foundation-rails'

# glyphs/icons
gem "font-awesome-rails"

# github fetching data
gem "github_api"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
 gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem 'capybara'
  gem 'rspec-rails'
end

gem 'puma'

