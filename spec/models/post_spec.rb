require 'rails_helper'

RSpec.describe Post, :type => :model do
  it { should validate_length_of(:title).is_at_least(5) }
  it { should validate_length_of(:content).is_at_least(10) }

  it "should return a title as a slug" do
    post = FactoryGirl.build(:post, title: 'My first post')
    post.slug.should == "my-first-post"
  end
end
