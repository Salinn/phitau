class CreateValentinesDayDelieveries < ActiveRecord::Migration
  def change
    create_table :valentines_day_delieveries do |t|
      t.integer :red_flower_quantity
      t.integer :white_flower_quantity
      t.integer :pink_flower_quantity
      t.integer :large_stuffed_animial_quantity
      t.integer :medium_stuffed_animial_quantity
      t.integer :small_animial_quantity
      t.string :buyer_name
      t.string :buyer_phone_number
      t.string :recievers_name
      t.string :recievers_phone_number
      t.string :delivery_location
      t.time :delivery_time
      t.string :delivery_instructions
      t.string :payment
      t.string :paypal_cost
      t.string :total_price

      t.timestamps
    end
  end
end
