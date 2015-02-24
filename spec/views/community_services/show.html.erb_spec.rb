require 'rails_helper'

RSpec.describe "community_services/show", type: :view do
  before(:each) do
    @community_service = assign(:community_service, CommunityService.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
