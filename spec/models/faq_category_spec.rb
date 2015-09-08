require 'rails_helper'

RSpec.describe FaqCategory, :type => :model do
  it { validate_length_of(:title).is_at_least(4) }
  it { validate_length_of(:content).is_at_least(10) }
  it { validate_presence_of(:faq_category_id) }
end
