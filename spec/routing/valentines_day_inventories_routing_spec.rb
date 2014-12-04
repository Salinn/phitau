require "rails_helper"

RSpec.describe ValentinesDayInventoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/valentines_day_inventories").to route_to("valentines_day_inventories#index")
    end

    it "routes to #new" do
      expect(:get => "/valentines_day_inventories/new").to route_to("valentines_day_inventories#new")
    end

    it "routes to #show" do
      expect(:get => "/valentines_day_inventories/1").to route_to("valentines_day_inventories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/valentines_day_inventories/1/edit").to route_to("valentines_day_inventories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/valentines_day_inventories").to route_to("valentines_day_inventories#create")
    end

    it "routes to #update" do
      expect(:put => "/valentines_day_inventories/1").to route_to("valentines_day_inventories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/valentines_day_inventories/1").to route_to("valentines_day_inventories#destroy", :id => "1")
    end

  end
end
