require 'rails_helper'

RSpec.describe "chairs/edit", :type => :view do
  before(:each) do
    @chair = assign(:chair, Chair.create!(
      :chair_name => "MyString",
      :user_id => 1,
      :role => "MyString"
    ))
  end

  it "renders the edit chair form" do
    render

    assert_select "form[action=?][method=?]", chair_path(@chair), "post" do

      assert_select "input#chair_chair_name[name=?]", "chair[chair_name]"

      assert_select "input#chair_user_id[name=?]", "chair[user_id]"

      assert_select "input#chair_role[name=?]", "chair[role]"
    end
  end
end
