require "rails_helper"

RSpec.describe InterviewQuestionnairesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/interview_questionnaires").to route_to("interview_questionnaires#index")
    end

    it "routes to #new" do
      expect(:get => "/interview_questionnaires/new").to route_to("interview_questionnaires#new")
    end

    it "routes to #show" do
      expect(:get => "/interview_questionnaires/1").to route_to("interview_questionnaires#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/interview_questionnaires/1/edit").to route_to("interview_questionnaires#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/interview_questionnaires").to route_to("interview_questionnaires#create")
    end

    it "routes to #update" do
      expect(:put => "/interview_questionnaires/1").to route_to("interview_questionnaires#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interview_questionnaires/1").to route_to("interview_questionnaires#destroy", :id => "1")
    end

  end
end
