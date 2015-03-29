require 'rails_helper'

RSpec.describe "Composites", type: :request do
  describe "GET /composites" do
    it "works! (now write some real specs)" do
      get composites_path
      expect(response).to have_http_status(200)
    end
  end
end
