# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alumni_news_letter do
    released_date "2014-10-05"
    alumni_new_letter_pdf "MyString"
  end
end
