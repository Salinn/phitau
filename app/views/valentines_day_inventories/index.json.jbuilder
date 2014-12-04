json.array!(@valentines_day_inventories) do |valentines_day_inventory|
  json.extract! valentines_day_inventory, :id, :total_red_flowers, :total_white_flowers, :total_pink_flowers, :total_large_stuffed_animials, :total_medium_stuffed_animials, :total_small_stuffed_animials, :red_flower_price, :white_flower_price, :pink_flower_price, :large_stuffed_animial_price, :medium_stuffed_animial_price, :small_stuffed_animial_price, :current_year, :red_total, :white_total, :pink_total, :large_total, :medium_total, :small_total, :total_raised, :total_cost
  json.url valentines_day_inventory_url(valentines_day_inventory, format: :json)
end
