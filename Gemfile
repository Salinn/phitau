source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0'
gem 'capricorn', '0.2.25'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails', '3.1.4'
gem 'jbuilder', '~> 1.2'
gem "therubyracer", '0.12.2'
gem 'uglifier', '>= 1.3.0'

#User authetication
gem 'devise', '3.5.2'
gem 'devise-encryptable', '0.2.0'

#Manages users abilities on the website
gem 'cancancan', '1.12.0'

#add pictures to the website
gem "rmagick", '2.15.4'
gem "carrierwave", '0.10.0'
gem 'fog', '1.34.0'
gem 'fancybox-rails', '0.3.0'
gem 'lightbox2-rails', '2.7.1'

#Text editor for those who don't know how to use css to format text
gem 'ckeditor', '4.1.3'

#Stops webcralwers from signing up
gem "recaptcha", :require => "recaptcha/rails"

#bootstrap
gem 'bootstrap-sass', '~> 3.3.0'
gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails', '6.0.2'
gem 'turbolinks', '2.5.3'

#For texting
gem 'twilio-ruby', '4.3.0'

#For breaking up sections, such as multiple posts and putting them on different pages with a link to that page
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

#Searching
gem 'chosen-rails', '1.4.3'
gem 'ransack', '1.7.0'

#JQuery for datepicker and timepicker
gem 'jquery-ui-rails', '5.0.5'
gem 'jquery-timepicker-rails', '1.4.3'

#error reporting
gem 'raygun4ruby', '1.1.6'

#mailchimp
gem 'gibbon', '1.1.5'

#Delayed jobs that increase the speed at what things could be done / done in the background
gem 'delayed_job_active_record', '4.0.3'

#server side
gem 'puma', '2.13.4'

#stops us from deleting rows
gem "paranoia", "~> 2.0"

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
  gem 'shoulda-matchers'
  gem 'cucumber-rails', require: false

  gem 'faker'
end

#Gems used in production
group :production do
  gem 'rails_12factor', '0.0.3'

  #The database used in production
  gem 'pg', '0.18.3'
end
