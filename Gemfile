source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.0'
gem 'dotenv-rails'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'bourbon'
gem 'neat'
gem 'refills'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'will_paginate', '~> 3.0.6'
gem 'unicorn-rails'

group :development do
  gem 'web-console', '~> 2.0'
end
group :development, :test do
  gem 'rspec-rails', '~> 3.2'
  gem 'byebug'
  gem 'spring'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara', '~> 2.3.0'
  gem 'shoulda-matchers', require: false
  gem 'database_cleaner'
  gem "codeclimate-test-reporter", require: nil
end

group :staging, :production do
    gem 'rails_12factor'
end
