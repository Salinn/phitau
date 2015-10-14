class CreateCurrentResidences < ActiveRecord::Migration
  def change
    create_table :current_residences do |t|
      t.string :building_name
      t.integer :map_location
      t.boolean :dorm_side

      t.timestamps
    end
  end
end
