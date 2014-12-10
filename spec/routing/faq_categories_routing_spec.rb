require "rails_helper"

RSpec.describe FaqCategoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/faq_categories").to route_to("faq_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/faq_categories/new").to route_to("faq_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/faq_categories/1").to route_to("faq_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/faq_categories/1/edit").to route_to("faq_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/faq_categories").to route_to("faq_categories#create")
    end

    it "routes to #update" do
      expect(:put => "/faq_categories/1").to route_to("faq_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/faq_categories/1").to route_to("faq_categories#destroy", :id => "1")
    end

  end
end
