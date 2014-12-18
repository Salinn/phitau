require 'rails_helper'

RSpec.describe "images/edit", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyString",
      :width => 1,
      :height => 1
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_width[name=?]", "image[width]"

      assert_select "input#image_height[name=?]", "image[height]"
    end
  end
end
