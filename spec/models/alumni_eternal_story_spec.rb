require 'rails_helper'

RSpec.describe AlumniEternalStory, type: :model do
  it { validate_presence_of(:user_id) }
  it { validate_presence_of(:story) }
  it { validate_presence_of(:alumni_eternal_id) }
end
