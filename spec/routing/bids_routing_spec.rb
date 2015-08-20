require "rails_helper"

RSpec.describe BidsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bids").to route_to("bids#index")
    end

    it "routes to #new" do
      expect(:get => "/bids/new").to route_to("bids#new")
    end

    it "routes to #show" do
      expect(:get => "/bids/1").to route_to("bids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bids/1/edit").to route_to("bids#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bids").to route_to("bids#create")
    end

    it "routes to #update" do
      expect(:put => "/bids/1").to route_to("bids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bids/1").to route_to("bids#destroy", :id => "1")
    end

  end
end
