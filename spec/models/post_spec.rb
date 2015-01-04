require 'rails_helper'

RSpec.describe Post, :type => :model do
  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_least(5) }
  it { should validate_presence_of(:content) }
  it { should ensure_length_of(:content).is_at_least(10) }
end
