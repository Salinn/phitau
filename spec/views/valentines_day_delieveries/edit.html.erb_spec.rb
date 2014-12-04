require 'rails_helper'

RSpec.describe "valentines_day_delieveries/edit", :type => :view do
  before(:each) do
    @valentines_day_delievery = assign(:valentines_day_delievery, ValentinesDayDelievery.create!(
      :red_flower_quantity => 1,
      :white_flower_quantity => 1,
      :pink_flower_quantity => 1,
      :large_stuffed_animial_quantity => 1,
      :medium_stuffed_animial_quantity => 1,
      :small_animial_quantity => 1,
      :buyer_name => "MyString",
      :buyer_phone_number => "MyString",
      :recievers_name => "MyString",
      :recievers_phone_number => "MyString",
      :delivery_location => "MyString",
      :delivery_instructions => "MyString",
      :payment => "MyString",
      :paypal_cost => "MyString",
      :total_price => "MyString"
    ))
  end

  it "renders the edit valentines_day_delievery form" do
    render

    assert_select "form[action=?][method=?]", valentines_day_delievery_path(@valentines_day_delievery), "post" do

      assert_select "input#valentines_day_delievery_red_flower_quantity[name=?]", "valentines_day_delievery[red_flower_quantity]"

      assert_select "input#valentines_day_delievery_white_flower_quantity[name=?]", "valentines_day_delievery[white_flower_quantity]"

      assert_select "input#valentines_day_delievery_pink_flower_quantity[name=?]", "valentines_day_delievery[pink_flower_quantity]"

      assert_select "input#valentines_day_delievery_large_stuffed_animial_quantity[name=?]", "valentines_day_delievery[large_stuffed_animial_quantity]"

      assert_select "input#valentines_day_delievery_medium_stuffed_animial_quantity[name=?]", "valentines_day_delievery[medium_stuffed_animial_quantity]"

      assert_select "input#valentines_day_delievery_small_animial_quantity[name=?]", "valentines_day_delievery[small_animial_quantity]"

      assert_select "input#valentines_day_delievery_buyer_name[name=?]", "valentines_day_delievery[buyer_name]"

      assert_select "input#valentines_day_delievery_buyer_phone_number[name=?]", "valentines_day_delievery[buyer_phone_number]"

      assert_select "input#valentines_day_delievery_recievers_name[name=?]", "valentines_day_delievery[recievers_name]"

      assert_select "input#valentines_day_delievery_recievers_phone_number[name=?]", "valentines_day_delievery[recievers_phone_number]"

      assert_select "input#valentines_day_delievery_delivery_location[name=?]", "valentines_day_delievery[delivery_location]"

      assert_select "input#valentines_day_delievery_delivery_instructions[name=?]", "valentines_day_delievery[delivery_instructions]"

      assert_select "input#valentines_day_delievery_payment[name=?]", "valentines_day_delievery[payment]"

      assert_select "input#valentines_day_delievery_paypal_cost[name=?]", "valentines_day_delievery[paypal_cost]"

      assert_select "input#valentines_day_delievery_total_price[name=?]", "valentines_day_delievery[total_price]"
    end
  end
end
