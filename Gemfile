source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.4.1"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0"

# Asset pipeline for Rails
gem "propshaft", "~> 1.1"

# Database setup with PostgreSQL
gem "pg", "~> 1.1"

# Puma web server
gem "puma", "~> 6.4"

# JavaScript bundling
gem "jsbundling-rails"

# Hotwire for SPA-like behavior
gem "turbo-rails"
gem "stimulus-rails"

# CSS bundling
gem "cssbundling-rails"

# JSON API builder
gem "jbuilder"

# Redis setup for background jobs
gem "redis", "~> 5.2"

# Kredis (optional for high-level Redis usage)
# gem "kredis"

# Zoneinfo for Windows (platform-specific)
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Active Storage image processing (optional)
# gem "image_processing", "~> 1.2"

# Background job processing with Sidekiq
gem "sidekiq", "~> 7.3"

# Authentication with Devise
gem 'devise'

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "rubocop-rails-omakase", require: false
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 5.0"  # For RSpec testing
  gem "faker", "~> 2.18"  # For generating fake data in tests
end

group :development do
  gem "web-console"
  gem "rack-mini-profiler"
  gem "hotwire-spark", "~> 0.1"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
