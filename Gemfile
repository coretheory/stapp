source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1', '>= 6.1.3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Active Storage
gem 'activestorage-office-previewer', '~> 0.1.2'
gem "aws-sdk-s3", require: false
gem 'image_processing', '~> 1.2'

# Assets
gem 'inline_svg', '~> 1.7', '>= 1.7.1'
gem 'jbuilder', '~> 2.7'
gem 'mini_magick', '~> 4.10', '>= 4.10.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.2', '>= 5.2.1'

# Authentication & Authorization
gem 'cancancan', '~> 3.1'
gem 'devise', '~> 4.7', '>= 4.7.2'

# Cache
gem 'dalli', '~> 2.7', '>= 2.7.10'

# Database
gem 'pg', '~> 1.2', '>= 1.2.3'

# Forms
# gem 'country_select', '~> 4.0'

# Jobs
gem 'redis', '~> 4.0'
gem 'sidekiq', '~> 6.1', '>= 6.1.2'

# Other
gem 'friendly_id', '~> 5.4'
gem 'meta-tags', '~> 2.13'
gem 'name_of_person', '~> 1.1', '>= 1.1.1'
gem 'noticed', '~> 1.2', '>= 1.2.15'
gem 'turbolinks', '~> 5'

# Security
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'devise-pwned_password', '~> 0.1.9'

# Server
gem 'puma', '~> 4.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'bundler-audit', '~> 0.7.0.1'
  gem 'brakeman', '~> 4.9', '>= 4.9.1'
  gem 'database_consistency', '~> 0.8.4', require: false
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'simplecov', '~> 0.19.0', require: false
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
