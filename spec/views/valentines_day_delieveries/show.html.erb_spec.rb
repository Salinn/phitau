require 'rails_helper'

RSpec.describe "valentines_day_delieveries/show", :type => :view do
  before(:each) do
    @valentines_day_delievery = assign(:valentines_day_delievery, ValentinesDayDelievery.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Buyer Name/)
    expect(rendered).to match(/Buyer Phone Number/)
    expect(rendered).to match(/Recievers Name/)
    expect(rendered).to match(/Recievers Phone Number/)
    expect(rendered).to match(/Delivery Location/)
    expect(rendered).to match(/Delivery Instructions/)
    expect(rendered).to match(/Payment/)
    expect(rendered).to match(/Paypal Cost/)
    expect(rendered).to match(/Total Price/)
  end
end
