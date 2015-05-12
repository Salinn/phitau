# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    phone_number Faker::PhoneNumber.cell_phone
    user_status 'admin'
    password Faker::Internet.password
  end
end
