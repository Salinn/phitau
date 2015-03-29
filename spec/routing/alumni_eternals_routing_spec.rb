require "rails_helper"

RSpec.describe AlumniEternalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/alumni_eternals").to route_to("alumni_eternals#index")
    end

    it "routes to #new" do
      expect(:get => "/alumni_eternals/new").to route_to("alumni_eternals#new")
    end

    it "routes to #show" do
      expect(:get => "/alumni_eternals/1").to route_to("alumni_eternals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/alumni_eternals/1/edit").to route_to("alumni_eternals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/alumni_eternals").to route_to("alumni_eternals#create")
    end

    it "routes to #update" do
      expect(:put => "/alumni_eternals/1").to route_to("alumni_eternals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alumni_eternals/1").to route_to("alumni_eternals#destroy", :id => "1")
    end

  end
end
