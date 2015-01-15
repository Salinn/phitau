class FaqCategory < ActiveRecord::Base
  has_many :faq_questions

  validates :title, length: {minimum: 4}
end
