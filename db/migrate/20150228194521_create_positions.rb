class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :position_name
      t.integer :user_id
      t.integer :role_id
      t.boolean :on_eboard

      t.timestamps
    end
  end
end
