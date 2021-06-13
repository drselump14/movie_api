# frozen_string_literal: true

source "https://rubygems.org"

gem "hanami", "~> 1.3"
gem "hanami-model", "~> 1.3"
gem "rake"

gem "pg"

gem "activesupport"
gem "anyway_config"
gem "dry-auto_inject"
gem "dry-container"
gem "dry-system"
gem "factory_bot"
gem "faker"
gem "jwt"
gem "sorbet-coerce"
gem "sorbet-runtime"
gem "trailblazer"
gem "trailblazer-developer"

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem "hanami-webconsole"
  gem "pry-byebug"
  gem "pry-remote"
  gem "pry-sorbet"
  gem "pry-stack_explorer"
  gem "rb-readline"
  gem "shotgun", platforms: :ruby
end

group :test, :development do
  gem "dotenv", "~> 2.4"
end

group :test do
  gem "database_cleaner-sequel"
  gem "rspec"
end

group :tools do
  gem "parlour", require: false
  gem "rubocop", require: false
  gem "rubocop-github", ">= 0.16.0"
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rake", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-sequel", require: false
  gem "rubocop-sorbet", require: false
  gem "solargraph", require: false
  gem "sorbet", require: false
  gem "squasher", ">= 0.6.0", require: false
  gem "tapioca", require: false
end

group :production do
  # gem 'puma'
end
