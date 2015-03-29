require 'rails_helper'

RSpec.describe "AlumniEternals", type: :request do
  describe "GET /alumni_eternals" do
    it "works! (now write some real specs)" do
      get alumni_eternals_path
      expect(response).to have_http_status(200)
    end
  end
end
