require 'rails_helper'

RSpec.describe "Paddles", type: :request do
  describe "GET /paddles" do
    it "works! (now write some real specs)" do
      get paddles_path
      expect(response).to have_http_status(200)
    end
  end
end
