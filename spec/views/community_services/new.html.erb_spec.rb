require 'rails_helper'

RSpec.describe "community_services/new", type: :view do
  before(:each) do
    assign(:community_service, CommunityService.new())
  end

  it "renders new community_service form" do
    render

    assert_select "form[action=?][method=?]", community_services_path, "post" do
    end
  end
end
