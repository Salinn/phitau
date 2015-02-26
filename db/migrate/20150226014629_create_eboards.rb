class CreateEboards < ActiveRecord::Migration
  def change
    create_table :eboards do |t|
      t.string :position_name
      t.integer :user_id
      t.string :role
      t.timestamps
    end
  end
end
