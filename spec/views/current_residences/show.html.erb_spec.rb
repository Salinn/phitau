require 'rails_helper'

RSpec.describe "current_residences/show", type: :view do
  before(:each) do
    @current_residence = assign(:current_residence, CurrentResidence.create!(
      :building_name => "Building Name",
      :map_location => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Building Name/)
    expect(rendered).to match(/1/)
  end
end
