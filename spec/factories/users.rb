# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'pmdspam@gmail.com'
    first_name 'Paul'
    last_name 'Darragh'
    phone_number '15088388579'
    role 'admin'
    password 'password123'
  end
end
