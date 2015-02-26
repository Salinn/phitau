require 'rails_helper'

RSpec.describe "eboards/show", type: :view do
  before(:each) do
    @eboard = assign(:eboard, Eboard.create!(
      :position_name => "Position Name",
      :user_id => 1,
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Position Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Role/)
  end
end
