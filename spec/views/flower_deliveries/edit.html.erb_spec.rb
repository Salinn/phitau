require 'rails_helper'

RSpec.describe "flower_deliveries/edit", :type => :view do
  before(:each) do
    @flower_delivery = assign(:flower_delivery, FlowerDelivery.create!())
  end

  it "renders the edit flower_delivery form" do
    render

    assert_select "form[action=?][method=?]", flower_delivery_path(@flower_delivery), "post" do
    end
  end
end
