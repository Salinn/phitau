require 'rails_helper'

RSpec.describe Event, type: :model do
  it { validate_presence_of(:start_time) }
  it { validate_presence_of(:end_time) }
  it { validate_presence_of(:event_date) }
  it { validate_length_of(:name).is_at_least(3) }
  it { validate_length_of(:description).is_at_least(10) }
  it { validate_presence_of(:user_id) }
end