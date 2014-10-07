source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'devise'
gem "therubyracer"
gem 'cancancan'
gem 'whenever', :require => false
gem 'unicorn'
gem 'capricorn'
gem "rspec-rails", :group => [:development, :test]
gem "capybara"
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'

#add pictures to the website
gem "rmagick"
gem "carrierwave"
gem 'fog'
gem 'mini_magick'

#text editor for those who don't know how to use css to format text
gem 'tinymce-rails'

#Stops bugs
gem "recaptcha", :require => "recaptcha/rails"

#bootstrap
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end



group :development, :test do
  gem 'better_errors', '1.0.1'
  gem 'binding_of_caller', '0.7.2'
  gem 'factory_girl_rails'
  gem 'sqlite3'
end
group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
end
group :production do
  gem 'rails_12factor'
  gem 'pg'
end
