require 'rails_helper'

RSpec.describe "composites/edit", type: :view do
  before(:each) do
    @composite = assign(:composite, Composite.create!(
      :year => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders the edit composite form" do
    render

    assert_select "form[action=?][method=?]", composite_path(@composite), "post" do

      assert_select "input#composite_year[name=?]", "composite[year]"

      assert_select "input#composite_picture[name=?]", "composite[picture]"
    end
  end
end
