require 'rails_helper'

RSpec.describe "ValentinesDayDelieveries", :type => :request do
  describe "GET /valentines_day_delieveries" do
    it "works! (now write some real specs)" do
      get valentines_day_delieveries_path
      expect(response).to have_http_status(200)
    end
  end
end
