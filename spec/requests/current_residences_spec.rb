require 'rails_helper'

RSpec.describe "CurrentResidences", type: :request do
  describe "GET /current_residences" do
    it "works! (now write some real specs)" do
      get current_residences_path
      expect(response).to have_http_status(200)
    end
  end
end
