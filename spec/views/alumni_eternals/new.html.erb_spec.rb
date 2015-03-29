require 'rails_helper'

RSpec.describe "alumni_eternals/new", type: :view do
  before(:each) do
    assign(:alumni_eternal, AlumniEternal.new(
      :user_id => 1,
      :first_name => "MyString",
      :last_name => "MyString",
      :picture => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new alumni_eternal form" do
    render

    assert_select "form[action=?][method=?]", alumni_eternals_path, "post" do

      assert_select "input#alumni_eternal_user_id[name=?]", "alumni_eternal[user_id]"

      assert_select "input#alumni_eternal_first_name[name=?]", "alumni_eternal[first_name]"

      assert_select "input#alumni_eternal_last_name[name=?]", "alumni_eternal[last_name]"

      assert_select "input#alumni_eternal_picture[name=?]", "alumni_eternal[picture]"

      assert_select "textarea#alumni_eternal_description[name=?]", "alumni_eternal[description]"
    end
  end
end
