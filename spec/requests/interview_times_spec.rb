require 'rails_helper'

RSpec.describe "InterviewTimes", type: :request do
  describe "GET /interview_times" do
    it "works! (now write some real specs)" do
      get interview_times_path
      expect(response).to have_http_status(200)
    end
  end
end
