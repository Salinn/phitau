require 'rails_helper'

RSpec.describe "composites/new", type: :view do
  before(:each) do
    assign(:composite, Composite.new(
      :year => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders new composite form" do
    render

    assert_select "form[action=?][method=?]", composites_path, "post" do

      assert_select "input#composite_year[name=?]", "composite[year]"

      assert_select "input#composite_picture[name=?]", "composite[picture]"
    end
  end
end
