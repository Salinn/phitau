require 'rails_helper'

RSpec.describe "positions/show", type: :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      :position_name => "Position Name",
      :user_id => 1,
      :role_id => 2,
      :on_eboard => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Position Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
