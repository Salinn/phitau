require 'rails_helper'

RSpec.describe "galleries/new", :type => :view do
  before(:each) do
    assign(:gallery, Gallery.new(
      :name => "MyString",
      :private => false
    ))
  end

  it "renders new gallery form" do
    render

    assert_select "form[action=?][method=?]", galleries_path, "post" do

      assert_select "input#gallery_name[name=?]", "gallery[name]"

      assert_select "input#gallery_private[name=?]", "gallery[private]"
    end
  end
end
