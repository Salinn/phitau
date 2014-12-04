require 'rails_helper'

RSpec.describe "valentines_day_delieveries/index", :type => :view do
  before(:each) do
    assign(:valentines_day_delieveries, [
      ValentinesDayDelievery.create!(
        :red_flower_quantity => 1,
        :white_flower_quantity => 2,
        :pink_flower_quantity => 3,
        :large_stuffed_animial_quantity => 4,
        :medium_stuffed_animial_quantity => 5,
        :small_animial_quantity => 6,
        :buyer_name => "Buyer Name",
        :buyer_phone_number => "Buyer Phone Number",
        :recievers_name => "Recievers Name",
        :recievers_phone_number => "Recievers Phone Number",
        :delivery_location => "Delivery Location",
        :delivery_instructions => "Delivery Instructions",
        :payment => "Payment",
        :paypal_cost => "Paypal Cost",
        :total_price => "Total Price"
      ),
      ValentinesDayDelievery.create!(
        :red_flower_quantity => 1,
        :white_flower_quantity => 2,
        :pink_flower_quantity => 3,
        :large_stuffed_animial_quantity => 4,
        :medium_stuffed_animial_quantity => 5,
        :small_animial_quantity => 6,
        :buyer_name => "Buyer Name",
        :buyer_phone_number => "Buyer Phone Number",
        :recievers_name => "Recievers Name",
        :recievers_phone_number => "Recievers Phone Number",
        :delivery_location => "Delivery Location",
        :delivery_instructions => "Delivery Instructions",
        :payment => "Payment",
        :paypal_cost => "Paypal Cost",
        :total_price => "Total Price"
      )
    ])
  end

  it "renders a list of valentines_day_delieveries" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Buyer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Buyer Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Recievers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Recievers Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Location".to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Instructions".to_s, :count => 2
    assert_select "tr>td", :text => "Payment".to_s, :count => 2
    assert_select "tr>td", :text => "Paypal Cost".to_s, :count => 2
    assert_select "tr>td", :text => "Total Price".to_s, :count => 2
  end
end
