class FaqQuestion < ActiveRecord::Base
  belongs_to :faq_categories

  validates :title, length: {minimum: 4}
  validates :content, length: {minimum: 10}
  validates :faq_category_id, presence: true
end
