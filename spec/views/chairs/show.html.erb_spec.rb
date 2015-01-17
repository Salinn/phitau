require 'rails_helper'

RSpec.describe "chairs/show", :type => :view do
  before(:each) do
    @chair = assign(:chair, Chair.create!(
      :chair_name => "Chair Name",
      :user_id => 1,
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Chair Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Role/)
  end
end
