require "rails_helper"

RSpec.describe CommunityServicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/community_services").to route_to("community_services#index")
    end

    it "routes to #new" do
      expect(:get => "/community_services/new").to route_to("community_services#new")
    end

    it "routes to #show" do
      expect(:get => "/community_services/1").to route_to("community_services#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/community_services/1/edit").to route_to("community_services#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/community_services").to route_to("community_services#create")
    end

    it "routes to #update" do
      expect(:put => "/community_services/1").to route_to("community_services#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/community_services/1").to route_to("community_services#destroy", :id => "1")
    end

  end
end
