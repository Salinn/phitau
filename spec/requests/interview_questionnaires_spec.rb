require 'rails_helper'

RSpec.describe "InterviewQuestionnaires", type: :request do
  describe "GET /interview_questionnaires" do
    it "works! (now write some real specs)" do
      get interview_questionnaires_path
      expect(response).to have_http_status(200)
    end
  end
end
