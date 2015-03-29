class CreateAlumniEternals < ActiveRecord::Migration
  def change
    create_table :alumni_eternals do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
