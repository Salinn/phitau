require "rails_helper"

RSpec.describe AlumniEternalStoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/alumni_eternal_stories").to route_to("alumni_eternal_stories#index")
    end

    it "routes to #new" do
      expect(:get => "/alumni_eternal_stories/new").to route_to("alumni_eternal_stories#new")
    end

    it "routes to #show" do
      expect(:get => "/alumni_eternal_stories/1").to route_to("alumni_eternal_stories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/alumni_eternal_stories/1/edit").to route_to("alumni_eternal_stories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/alumni_eternal_stories").to route_to("alumni_eternal_stories#create")
    end

    it "routes to #update" do
      expect(:put => "/alumni_eternal_stories/1").to route_to("alumni_eternal_stories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alumni_eternal_stories/1").to route_to("alumni_eternal_stories#destroy", :id => "1")
    end

  end
end
