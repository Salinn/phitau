require 'rails_helper'

RSpec.describe FaqQuestion, :type => :model do
  it { validate_presence_of(:event_date) }
  it { validate_length_of(:name).is_at_least(3) }
end
