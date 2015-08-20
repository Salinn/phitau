require 'rails_helper'

RSpec.describe "RushInterviews", type: :request do
  describe "GET /rush_interviews" do
    it "works! (now write some real specs)" do
      get rush_interviews_path
      expect(response).to have_http_status(200)
    end
  end
end
