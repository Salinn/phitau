require 'rails_helper'

RSpec.describe "AlumniNewsLetters", :type => :request do
  describe "GET /alumni_news_letters" do
    it "works! (now write some real specs)" do
      get alumni_news_letters_path
      expect(response).to have_http_status(200)
    end
  end
end
