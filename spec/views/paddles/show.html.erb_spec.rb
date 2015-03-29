require 'rails_helper'

RSpec.describe "paddles/show", type: :view do
  before(:each) do
    @paddle = assign(:paddle, Paddle.create!(
      :pledge_class => "Pledge Class",
      :picture => "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Pledge Class/)
    expect(rendered).to match(/Picture/)
  end
end
