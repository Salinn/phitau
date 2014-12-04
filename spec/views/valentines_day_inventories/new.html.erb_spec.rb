require 'rails_helper'

RSpec.describe "valentines_day_inventories/new", :type => :view do
  before(:each) do
    assign(:valentines_day_inventory, ValentinesDayInventory.new(
      :total_red_flowers => 1,
      :total_white_flowers => 1,
      :total_pink_flowers => 1,
      :total_large_stuffed_animials => 1,
      :total_medium_stuffed_animials => 1,
      :total_small_stuffed_animials => 1,
      :red_flower_price => 1.5,
      :white_flower_price => 1.5,
      :pink_flower_price => 1.5,
      :large_stuffed_animial_price => 1.5,
      :medium_stuffed_animial_price => 1.5,
      :small_stuffed_animial_price => 1.5,
      :current_year => "MyString",
      :red_total => 1,
      :white_total => 1,
      :pink_total => 1,
      :large_total => 1,
      :medium_total => 1,
      :small_total => 1,
      :total_raised => 1.5,
      :total_cost => 1.5
    ))
  end

  it "renders new valentines_day_inventory form" do
    render

    assert_select "form[action=?][method=?]", valentines_day_inventories_path, "post" do

      assert_select "input#valentines_day_inventory_total_red_flowers[name=?]", "valentines_day_inventory[total_red_flowers]"

      assert_select "input#valentines_day_inventory_total_white_flowers[name=?]", "valentines_day_inventory[total_white_flowers]"

      assert_select "input#valentines_day_inventory_total_pink_flowers[name=?]", "valentines_day_inventory[total_pink_flowers]"

      assert_select "input#valentines_day_inventory_total_large_stuffed_animials[name=?]", "valentines_day_inventory[total_large_stuffed_animials]"

      assert_select "input#valentines_day_inventory_total_medium_stuffed_animials[name=?]", "valentines_day_inventory[total_medium_stuffed_animials]"

      assert_select "input#valentines_day_inventory_total_small_stuffed_animials[name=?]", "valentines_day_inventory[total_small_stuffed_animials]"

      assert_select "input#valentines_day_inventory_red_flower_price[name=?]", "valentines_day_inventory[red_flower_price]"

      assert_select "input#valentines_day_inventory_white_flower_price[name=?]", "valentines_day_inventory[white_flower_price]"

      assert_select "input#valentines_day_inventory_pink_flower_price[name=?]", "valentines_day_inventory[pink_flower_price]"

      assert_select "input#valentines_day_inventory_large_stuffed_animial_price[name=?]", "valentines_day_inventory[large_stuffed_animial_price]"

      assert_select "input#valentines_day_inventory_medium_stuffed_animial_price[name=?]", "valentines_day_inventory[medium_stuffed_animial_price]"

      assert_select "input#valentines_day_inventory_small_stuffed_animial_price[name=?]", "valentines_day_inventory[small_stuffed_animial_price]"

      assert_select "input#valentines_day_inventory_current_year[name=?]", "valentines_day_inventory[current_year]"

      assert_select "input#valentines_day_inventory_red_total[name=?]", "valentines_day_inventory[red_total]"

      assert_select "input#valentines_day_inventory_white_total[name=?]", "valentines_day_inventory[white_total]"

      assert_select "input#valentines_day_inventory_pink_total[name=?]", "valentines_day_inventory[pink_total]"

      assert_select "input#valentines_day_inventory_large_total[name=?]", "valentines_day_inventory[large_total]"

      assert_select "input#valentines_day_inventory_medium_total[name=?]", "valentines_day_inventory[medium_total]"

      assert_select "input#valentines_day_inventory_small_total[name=?]", "valentines_day_inventory[small_total]"

      assert_select "input#valentines_day_inventory_total_raised[name=?]", "valentines_day_inventory[total_raised]"

      assert_select "input#valentines_day_inventory_total_cost[name=?]", "valentines_day_inventory[total_cost]"
    end
  end
end
