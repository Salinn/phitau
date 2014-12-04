require "rails_helper"

RSpec.describe FlowerDeliveriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flower_deliveries").to route_to("flower_deliveries#index")
    end

    it "routes to #new" do
      expect(:get => "/flower_deliveries/new").to route_to("flower_deliveries#new")
    end

    it "routes to #show" do
      expect(:get => "/flower_deliveries/1").to route_to("flower_deliveries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flower_deliveries/1/edit").to route_to("flower_deliveries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flower_deliveries").to route_to("flower_deliveries#create")
    end

    it "routes to #update" do
      expect(:put => "/flower_deliveries/1").to route_to("flower_deliveries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flower_deliveries/1").to route_to("flower_deliveries#destroy", :id => "1")
    end

  end
end
