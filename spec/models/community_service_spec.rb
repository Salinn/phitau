require 'rails_helper'

RSpec.describe CommunityService, type: :model do
  it { validate_presence_of(:event_name) }
  it { validate_presence_of(:date_of_event) }
  it { validate_presence_of(:user_id) }
  it { validate_presence_of(:hours_volunteered) }
end
