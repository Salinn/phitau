require 'rails_helper'

RSpec.describe "ValentinesDayInventories", :type => :request do
  describe "GET /valentines_day_inventories" do
    it "works! (now write some real specs)" do
      get valentines_day_inventories_path
      expect(response).to have_http_status(200)
    end
  end
end
