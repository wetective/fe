source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 6.1.7"

# Use postgres as the database for Active Record
gem "pg"

# Use Puma as the app server
gem "puma", "~> 5.0"

# Use SCSS for stylesheets
gem "sass-rails", ">= 6"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"

# Use Active Model has_secure_password
gem "bcrypt"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use bootstrap for styling
gem "bootstrap"

# Use jquery for javascript
gem "jquery-rails"

# Use leaflet to handle maps
gem "leaflet-rails"

# Use figaro to handle environment variables
gem "figaro"

# Use faraday to handle api calls
gem "faraday"

# Use omniauth to handle OAuth authentication
gem "omniauth"
gem "omniauth-google-oauth2"
gem "omniauth-rails_csrf_protection"

# Use pagy for pagination
gem "pagy"

# Use font-awesome for icons
gem 'font-awesome-less'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem "webpacker", "~> 5.0"

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem "turbolinks", "~> 5"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Active Storage variant
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry"
end

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem "faker"
  gem "launchy" # save_and_open_page
  gem "orderly"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "simplecov"
  gem "vcr"
  gem "webmock"
end