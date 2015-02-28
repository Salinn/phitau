require 'rails_helper'

RSpec.describe "positions/edit", type: :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      :position_name => "MyString",
      :user_id => 1,
      :role_id => 1,
      :on_eboard => false
    ))
  end

  it "renders the edit position form" do
    render

    assert_select "form[action=?][method=?]", position_path(@position), "post" do

      assert_select "input#position_position_name[name=?]", "position[position_name]"

      assert_select "input#position_user_id[name=?]", "position[user_id]"

      assert_select "input#position_role_id[name=?]", "position[role_id]"

      assert_select "input#position_on_eboard[name=?]", "position[on_eboard]"
    end
  end
end
