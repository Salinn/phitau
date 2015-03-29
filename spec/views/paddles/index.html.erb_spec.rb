require 'rails_helper'

RSpec.describe "paddles/index", type: :view do
  before(:each) do
    assign(:paddles, [
      Paddle.create!(
        :pledge_class => "Pledge Class",
        :picture => "Picture"
      ),
      Paddle.create!(
        :pledge_class => "Pledge Class",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of paddles" do
    render
    assert_select "tr>td", :text => "Pledge Class".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
