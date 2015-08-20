require 'rails_helper'

RSpec.describe "Bids", type: :request do
  describe "GET /bids" do
    it "works! (now write some real specs)" do
      get bids_path
      expect(response).to have_http_status(200)
    end
  end
end
