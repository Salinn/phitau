require 'rails_helper'

RSpec.describe "FaqCategories", :type => :request do
  describe "GET /faq_categories" do
    it "works! (now write some real specs)" do
      get faq_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
