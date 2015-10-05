require "rails_helper"

RSpec.describe StandardsBoardsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/standards_boards").to route_to("standards_boards#index")
    end

    it "routes to #new" do
      expect(:get => "/standards_boards/new").to route_to("standards_boards#new")
    end

    it "routes to #show" do
      expect(:get => "/standards_boards/1").to route_to("standards_boards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/standards_boards/1/edit").to route_to("standards_boards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/standards_boards").to route_to("standards_boards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/standards_boards/1").to route_to("standards_boards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/standards_boards/1").to route_to("standards_boards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/standards_boards/1").to route_to("standards_boards#destroy", :id => "1")
    end

  end
end
