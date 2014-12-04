require 'rails_helper'

RSpec.describe "flower_deliveries/show", :type => :view do
  before(:each) do
    @flower_delivery = assign(:flower_delivery, FlowerDelivery.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
