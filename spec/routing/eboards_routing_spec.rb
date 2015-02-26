require "rails_helper"

RSpec.describe EboardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/eboards").to route_to("eboards#index")
    end

    it "routes to #new" do
      expect(:get => "/eboards/new").to route_to("eboards#new")
    end

    it "routes to #show" do
      expect(:get => "/eboards/1").to route_to("eboards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eboards/1/edit").to route_to("eboards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/eboards").to route_to("eboards#create")
    end

    it "routes to #update" do
      expect(:put => "/eboards/1").to route_to("eboards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eboards/1").to route_to("eboards#destroy", :id => "1")
    end

  end
end
