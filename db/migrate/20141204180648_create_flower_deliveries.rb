class CreateFlowerDeliveries < ActiveRecord::Migration
  def change
    create_table :flower_deliveries do |t|

      t.timestamps
    end
  end
end
