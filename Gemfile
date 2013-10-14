source 'https://rubygems.org'
gem 'rails', '4.0.0'
gem 'execjs'
gem 'therubyracer'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'fb-channel-file'
gem 'rack-facebook-signed-request', :git => 'git://github.com/cmer/rack-facebook-signed-request.git'
gem 'koala', '>= 1.7.0rc1'
gem 'simple_form', '>= 3.0.0'
gem 'useragent', '>= 0.2.1'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'sqlite3'
  gem 'thin'
  gem 'pry'
  gem 'capistrano', github: "capistrano/capistrano"
  # gem 'guard-rails'
end

group :production do
  # gem 'rb-readline', '~> 0.5.0'
  gem 'mysql2'
  gem 'unicorn'
end

group :test do
  gem 'capybara'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem "database_cleaner"
  gem "email_spec"
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end
