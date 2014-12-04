require 'rails_helper'

RSpec.describe "FlowerDeliveries", :type => :request do
  describe "GET /flower_deliveries" do
    it "works! (now write some real specs)" do
      get flower_deliveries_path
      expect(response).to have_http_status(200)
    end
  end
end
