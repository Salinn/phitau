class CreateComposites < ActiveRecord::Migration
  def change
    create_table :composites do |t|
      t.string :year
      t.string :picture

      t.timestamps
    end
  end
end
