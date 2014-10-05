class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer "user_id"
      t.string "position_name"
      t.string "role_permission"

      t.timestamps
    end
  end
end
