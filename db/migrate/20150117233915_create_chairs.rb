class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
      t.string :chair_name
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end
