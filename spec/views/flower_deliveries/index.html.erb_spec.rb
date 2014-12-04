require 'rails_helper'

RSpec.describe "flower_deliveries/index", :type => :view do
  before(:each) do
    assign(:flower_deliveries, [
      FlowerDelivery.create!(),
      FlowerDelivery.create!()
    ])
  end

  it "renders a list of flower_deliveries" do
    render
  end
end
