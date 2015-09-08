require 'rails_helper'

RSpec.describe AlumniEternal, type: :model do
  it { validate_presence_of(:user_id) }
  it { validate_presence_of(:first_name) }
  it { validate_presence_of(:last_name) }
  it { validate_presence_of(:picture) }
  it { validate_presence_of(:description) }
end
