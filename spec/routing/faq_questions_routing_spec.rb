require "rails_helper"

RSpec.describe FaqQuestionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/faq_questions").to route_to("faq_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/faq_questions/new").to route_to("faq_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/faq_questions/1").to route_to("faq_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/faq_questions/1/edit").to route_to("faq_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/faq_questions").to route_to("faq_questions#create")
    end

    it "routes to #update" do
      expect(:put => "/faq_questions/1").to route_to("faq_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/faq_questions/1").to route_to("faq_questions#destroy", :id => "1")
    end

  end
end
