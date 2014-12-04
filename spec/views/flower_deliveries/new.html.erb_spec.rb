require 'rails_helper'

RSpec.describe "flower_deliveries/new", :type => :view do
  before(:each) do
    assign(:flower_delivery, FlowerDelivery.new())
  end

  it "renders new flower_delivery form" do
    render

    assert_select "form[action=?][method=?]", flower_deliveries_path, "post" do
    end
  end
end
