require 'rails_helper'

RSpec.describe "community_services/edit", type: :view do
  before(:each) do
    @community_service = assign(:community_service, CommunityService.create!())
  end

  it "renders the edit community_service form" do
    render

    assert_select "form[action=?][method=?]", community_service_path(@community_service), "post" do
    end
  end
end
