class CreateValentinesDayInventories < ActiveRecord::Migration
  def change
    create_table :valentines_day_inventories do |t|
      t.integer :total_red_flowers
      t.integer :total_white_flowers
      t.integer :total_pink_flowers
      t.integer :total_large_stuffed_animials
      t.integer :total_medium_stuffed_animials
      t.integer :total_small_stuffed_animials
      t.float :red_flower_price
      t.float :white_flower_price
      t.float :pink_flower_price
      t.float :large_stuffed_animial_price
      t.float :medium_stuffed_animial_price
      t.float :small_stuffed_animial_price
      t.string :current_year
      t.integer :red_total
      t.integer :white_total
      t.integer :pink_total
      t.integer :large_total
      t.integer :medium_total
      t.integer :small_total
      t.float :total_raised
      t.float :total_cost

      t.timestamps
    end
  end
end
