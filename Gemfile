# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) {|repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "dotenv-rails", groups: %i[development test], require: "dotenv/rails-now"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2"

gem "attr_encrypted" # and this we will use for per field encryption

# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 3.11"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"
gem "redis-namespace"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem "knock"

gem "base62-rb"

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem "annotate"
  gem "awesome_print"
  gem "bullet"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails"
  gem "guard", require: false
  gem "guard-brakeman", require: false
  gem "guard-bundler", require: false
  gem "guard-bundler-audit", require: false
  gem "guard-migrate", require: false
  gem "guard-rails_best_practices", github: "logankoester/guard-rails_best_practices", require: false
  gem "guard-reek", require: false
  gem "guard-rspec", require: false
  gem "guard-rubocop", require: false
  gem "guard-rubybeautify", require: false
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "ruby-growl"
  gem "rubycritic"
  gem "uniform_notifier"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "ffaker"
  gem "rspec-json_matcher"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]