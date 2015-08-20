require "rails_helper"

RSpec.describe InterviewTimesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/interview_times").to route_to("interview_times#index")
    end

    it "routes to #new" do
      expect(:get => "/interview_times/new").to route_to("interview_times#new")
    end

    it "routes to #show" do
      expect(:get => "/interview_times/1").to route_to("interview_times#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/interview_times/1/edit").to route_to("interview_times#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/interview_times").to route_to("interview_times#create")
    end

    it "routes to #update" do
      expect(:put => "/interview_times/1").to route_to("interview_times#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/interview_times/1").to route_to("interview_times#destroy", :id => "1")
    end

  end
end
