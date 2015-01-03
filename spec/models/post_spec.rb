require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "is not valid without a title" do
    post = Post.new(title: nil)
    post.should_not be_valid
  end
  it "is not valid without content" do
    post = Post.new(content: nil)
    post.should_not be_valid
  end
  it "is not valid without an image" do
    post = Post.new(image: nil)
    post.should_not be_valid
  end
end
