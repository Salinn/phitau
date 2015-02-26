require 'rails_helper'

RSpec.describe "eboards/index", type: :view do
  before(:each) do
    assign(:eboards, [
      Eboard.create!(
        :position_name => "Position Name",
        :user_id => 1,
        :role => "Role"
      ),
      Eboard.create!(
        :position_name => "Position Name",
        :user_id => 1,
        :role => "Role"
      )
    ])
  end

  it "renders a list of eboards" do
    render
    assert_select "tr>td", :text => "Position Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
