require 'rails_helper'

RSpec.describe "community_services/index", type: :view do
  before(:each) do
    assign(:community_services, [
      CommunityService.create!(),
      CommunityService.create!()
    ])
  end

  it "renders a list of community_services" do
    render
  end
end
