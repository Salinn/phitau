require 'rails_helper'

RSpec.describe "positions/index", type: :view do
  before(:each) do
    assign(:positions, [
      Position.create!(
        :position_name => "Position Name",
        :user_id => 1,
        :role_id => 2,
        :on_eboard => false
      ),
      Position.create!(
        :position_name => "Position Name",
        :user_id => 1,
        :role_id => 2,
        :on_eboard => false
      )
    ])
  end

  it "renders a list of positions" do
    render
    assert_select "tr>td", :text => "Position Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
