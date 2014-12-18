source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0'
gem 'capricorn'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 1.2'
gem "therubyracer"
gem 'unicorn'
gem 'uglifier', '>= 1.3.0'

#User authetication
gem 'devise'
gem 'devise-encryptable'

#Manages users abilities on the website
gem 'cancancan'

#Allows the ability to write cronjobs
gem 'whenever', :require => false

#add pictures to the website
gem "rmagick"
gem "carrierwave"
gem 'fog'
gem 'mini_magick'
gem 'fancybox-rails'

#Text editor for those who don't know how to use css to format text
gem 'tinymce-rails'

#Stops webcralwers from signing up
gem "recaptcha", :require => "recaptcha/rails"

#bootstrap
gem 'bootstrap-sass', '~> 3.3.0'
gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails'
gem 'turbolinks'

#For texting
gem 'twilio-ruby'

#For breaking up sections, such as multiple posts and putting them on different pages with a link to that page
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

#Searching
gem 'elasticsearch'
gem "searchkick"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

#Gems only used during testing and development
group :development, :test do
  #Gem to bring up a debugger in browser when something crashes
  gem 'better_errors', '1.0.1'

  #The database used in testing/development
  gem 'sqlite3'

  gem 'binding_of_caller', '0.7.2'
  gem 'factory_girl_rails'
  gem "rspec-rails" #http://www.relishapp.com/rspec/rspec-rails/docs/gettingstarted
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'cucumber-rails', :require => false
end

#Gems used in production
group :production do
  gem 'rails_12factor'

  #The database used in production
  gem 'pg'
end
