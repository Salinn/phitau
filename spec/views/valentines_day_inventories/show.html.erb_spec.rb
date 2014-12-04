require 'rails_helper'

RSpec.describe "valentines_day_inventories/show", :type => :view do
  before(:each) do
    @valentines_day_inventory = assign(:valentines_day_inventory, ValentinesDayInventory.create!(
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
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Current Year/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
