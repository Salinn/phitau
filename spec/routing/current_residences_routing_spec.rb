require "rails_helper"

RSpec.describe CurrentResidencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/current_residences").to route_to("current_residences#index")
    end

    it "routes to #new" do
      expect(:get => "/current_residences/new").to route_to("current_residences#new")
    end

    it "routes to #show" do
      expect(:get => "/current_residences/1").to route_to("current_residences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/current_residences/1/edit").to route_to("current_residences#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/current_residences").to route_to("current_residences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/current_residences/1").to route_to("current_residences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/current_residences/1").to route_to("current_residences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/current_residences/1").to route_to("current_residences#destroy", :id => "1")
    end

  end
end
