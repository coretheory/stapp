source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Active Storage
gem 'activestorage-office-previewer', '~> 0.1.2'
gem 'image_processing', '~> 1.2'

# Authentication & Authorization
gem 'cancancan', '~> 3.1'
gem 'devise', '~> 4.7', '>= 4.7.2'

# Assets
gem 'inline_svg', '~> 1.7', '>= 1.7.1'
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'mini_magick', '~> 4.10', '>= 4.10.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0' # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker

# Database
gem 'pg', '>= 0.18', '< 2.0'

# Forms
gem 'country_select', '~> 4.0'
gem 'mail_form', '~> 1.8'
gem 'simple_form', '~> 5.0', '>= 5.0.2'

# Other
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks

# Server
gem 'puma', '~> 4.1'

# Security
gem 'devise-pwned_password', '~> 0.1.8'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
