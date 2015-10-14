require 'rails_helper'

RSpec.describe "current_residences/index", type: :view do
  before(:each) do
    assign(:current_residences, [
      CurrentResidence.create!(
        :building_name => "Building Name",
        :map_location => 1
      ),
      CurrentResidence.create!(
        :building_name => "Building Name",
        :map_location => 1
      )
    ])
  end

  it "renders a list of current_residences" do
    render
    assert_select "tr>td", :text => "Building Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
