require 'rails_helper'

RSpec.describe Composite, type: :model do
  it { validate_presence_of(:year) }
  it { validate_presence_of(:picture) }
end
