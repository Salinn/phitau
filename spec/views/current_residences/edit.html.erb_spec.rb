require 'rails_helper'

RSpec.describe "current_residences/edit", type: :view do
  before(:each) do
    @current_residence = assign(:current_residence, CurrentResidence.create!(
      :building_name => "MyString",
      :map_location => 1
    ))
  end

  it "renders the edit current_residence form" do
    render

    assert_select "form[action=?][method=?]", current_residence_path(@current_residence), "post" do

      assert_select "input#current_residence_building_name[name=?]", "current_residence[building_name]"

      assert_select "input#current_residence_map_location[name=?]", "current_residence[map_location]"
    end
  end
end
