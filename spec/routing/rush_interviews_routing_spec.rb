require "rails_helper"

RSpec.describe RushInterviewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rush_interviews").to route_to("rush_interviews#index")
    end

    it "routes to #new" do
      expect(:get => "/rush_interviews/new").to route_to("rush_interviews#new")
    end

    it "routes to #show" do
      expect(:get => "/rush_interviews/1").to route_to("rush_interviews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rush_interviews/1/edit").to route_to("rush_interviews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rush_interviews").to route_to("rush_interviews#create")
    end

    it "routes to #update" do
      expect(:put => "/rush_interviews/1").to route_to("rush_interviews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rush_interviews/1").to route_to("rush_interviews#destroy", :id => "1")
    end

  end
end
