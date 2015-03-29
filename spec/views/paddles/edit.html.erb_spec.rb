require 'rails_helper'

RSpec.describe "paddles/edit", type: :view do
  before(:each) do
    @paddle = assign(:paddle, Paddle.create!(
      :pledge_class => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders the edit paddle form" do
    render

    assert_select "form[action=?][method=?]", paddle_path(@paddle), "post" do

      assert_select "input#paddle_pledge_class[name=?]", "paddle[pledge_class]"

      assert_select "input#paddle_picture[name=?]", "paddle[picture]"
    end
  end
end
