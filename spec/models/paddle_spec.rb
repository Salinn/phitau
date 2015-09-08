require 'rails_helper'

RSpec.describe Paddle, type: :model do
  it { validate_presence_of(:pledge_class) }
end
