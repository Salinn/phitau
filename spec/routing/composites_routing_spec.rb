require "rails_helper"

RSpec.describe CompositesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/composites").to route_to("composites#index")
    end

    it "routes to #new" do
      expect(:get => "/composites/new").to route_to("composites#new")
    end

    it "routes to #show" do
      expect(:get => "/composites/1").to route_to("composites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/composites/1/edit").to route_to("composites#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/composites").to route_to("composites#create")
    end

    it "routes to #update" do
      expect(:put => "/composites/1").to route_to("composites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/composites/1").to route_to("composites#destroy", :id => "1")
    end

  end
end
