require "rails_helper"

RSpec.describe TextMessagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/text_messages").to route_to("text_messages#index")
    end

    it "routes to #new" do
      expect(:get => "/text_messages/new").to route_to("text_messages#new")
    end

    it "routes to #show" do
      expect(:get => "/text_messages/1").to route_to("text_messages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/text_messages/1/edit").to route_to("text_messages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/text_messages").to route_to("text_messages#create")
    end

    it "routes to #update" do
      expect(:put => "/text_messages/1").to route_to("text_messages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/text_messages/1").to route_to("text_messages#destroy", :id => "1")
    end

  end
end
