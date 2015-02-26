require 'rails_helper'

RSpec.describe "eboards/new", type: :view do
  before(:each) do
    assign(:eboard, Eboard.new(
      :position_name => "MyString",
      :user_id => 1,
      :role => "MyString"
    ))
  end

  it "renders new eboard form" do
    render

    assert_select "form[action=?][method=?]", eboards_path, "post" do

      assert_select "input#eboard_position_name[name=?]", "eboard[position_name]"

      assert_select "input#eboard_user_id[name=?]", "eboard[user_id]"

      assert_select "input#eboard_role[name=?]", "eboard[role]"
    end
  end
end
