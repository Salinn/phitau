require "rails_helper"

RSpec.describe PaddlesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/paddles").to route_to("paddles#index")
    end

    it "routes to #new" do
      expect(:get => "/paddles/new").to route_to("paddles#new")
    end

    it "routes to #show" do
      expect(:get => "/paddles/1").to route_to("paddles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/paddles/1/edit").to route_to("paddles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/paddles").to route_to("paddles#create")
    end

    it "routes to #update" do
      expect(:put => "/paddles/1").to route_to("paddles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/paddles/1").to route_to("paddles#destroy", :id => "1")
    end

  end
end
