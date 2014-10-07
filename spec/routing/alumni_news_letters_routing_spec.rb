require "rails_helper"

RSpec.describe AlumniNewsLettersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/alumni_news_letters").to route_to("alumni_news_letters#index")
    end

    it "routes to #new" do
      expect(:get => "/alumni_news_letters/new").to route_to("alumni_news_letters#new")
    end

    it "routes to #show" do
      expect(:get => "/alumni_news_letters/1").to route_to("alumni_news_letters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/alumni_news_letters/1/edit").to route_to("alumni_news_letters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/alumni_news_letters").to route_to("alumni_news_letters#create")
    end

    it "routes to #update" do
      expect(:put => "/alumni_news_letters/1").to route_to("alumni_news_letters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/alumni_news_letters/1").to route_to("alumni_news_letters#destroy", :id => "1")
    end

  end
end
