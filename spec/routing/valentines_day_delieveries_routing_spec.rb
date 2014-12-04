require "rails_helper"

RSpec.describe ValentinesDayDelieveriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/valentines_day_delieveries").to route_to("valentines_day_delieveries#index")
    end

    it "routes to #new" do
      expect(:get => "/valentines_day_delieveries/new").to route_to("valentines_day_delieveries#new")
    end

    it "routes to #show" do
      expect(:get => "/valentines_day_delieveries/1").to route_to("valentines_day_delieveries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/valentines_day_delieveries/1/edit").to route_to("valentines_day_delieveries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/valentines_day_delieveries").to route_to("valentines_day_delieveries#create")
    end

    it "routes to #update" do
      expect(:put => "/valentines_day_delieveries/1").to route_to("valentines_day_delieveries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/valentines_day_delieveries/1").to route_to("valentines_day_delieveries#destroy", :id => "1")
    end

  end
end
