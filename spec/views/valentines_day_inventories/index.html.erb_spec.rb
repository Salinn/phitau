require 'rails_helper'

RSpec.describe "valentines_day_inventories/index", :type => :view do
  before(:each) do
    assign(:valentines_day_inventories, [
      ValentinesDayInventory.create!(
        :total_red_flowers => 1,
        :total_white_flowers => 2,
        :total_pink_flowers => 3,
        :total_large_stuffed_animials => 4,
        :total_medium_stuffed_animials => 5,
        :total_small_stuffed_animials => 6,
        :red_flower_price => 1.5,
        :white_flower_price => 1.5,
        :pink_flower_price => 1.5,
        :large_stuffed_animial_price => 1.5,
        :medium_stuffed_animial_price => 1.5,
        :small_stuffed_animial_price => 1.5,
        :current_year => "Current Year",
        :red_total => 7,
        :white_total => 8,
        :pink_total => 9,
        :large_total => 10,
        :medium_total => 11,
        :small_total => 12,
        :total_raised => 1.5,
        :total_cost => 1.5
      ),
      ValentinesDayInventory.create!(
        :total_red_flowers => 1,
        :total_white_flowers => 2,
        :total_pink_flowers => 3,
        :total_large_stuffed_animials => 4,
        :total_medium_stuffed_animials => 5,
        :total_small_stuffed_animials => 6,
        :red_flower_price => 1.5,
        :white_flower_price => 1.5,
        :pink_flower_price => 1.5,
        :large_stuffed_animial_price => 1.5,
        :medium_stuffed_animial_price => 1.5,
        :small_stuffed_animial_price => 1.5,
        :current_year => "Current Year",
        :red_total => 7,
        :white_total => 8,
        :pink_total => 9,
        :large_total => 10,
        :medium_total => 11,
        :small_total => 12,
        :total_raised => 1.5,
        :total_cost => 1.5
      )
    ])
  end

  it "renders a list of valentines_day_inventories" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Current Year".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
