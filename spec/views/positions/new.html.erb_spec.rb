require 'rails_helper'

RSpec.describe "positions/new", type: :view do
  before(:each) do
    assign(:position, Position.new(
      :position_name => "MyString",
      :user_id => 1,
      :role_id => 1,
      :on_eboard => false
    ))
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do

      assert_select "input#position_position_name[name=?]", "position[position_name]"

      assert_select "input#position_user_id[name=?]", "position[user_id]"

      assert_select "input#position_role_id[name=?]", "position[role_id]"

      assert_select "input#position_on_eboard[name=?]", "position[on_eboard]"
    end
  end
end
