require 'rails_helper'

RSpec.describe "paddles/new", type: :view do
  before(:each) do
    assign(:paddle, Paddle.new(
      :pledge_class => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders new paddle form" do
    render

    assert_select "form[action=?][method=?]", paddles_path, "post" do

      assert_select "input#paddle_pledge_class[name=?]", "paddle[pledge_class]"

      assert_select "input#paddle_picture[name=?]", "paddle[picture]"
    end
  end
end
