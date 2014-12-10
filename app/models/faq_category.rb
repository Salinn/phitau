class FaqCategory < ActiveRecord::Base
  has_many :faq_questions
end
