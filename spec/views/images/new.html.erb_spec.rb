require 'rails_helper'

RSpec.describe "images/new", :type => :view do
  before(:each) do
    assign(:image, Image.new(
      :name => "MyString",
      :width => 1,
      :height => 1
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_width[name=?]", "image[width]"

      assert_select "input#image_height[name=?]", "image[height]"
    end
  end
end
