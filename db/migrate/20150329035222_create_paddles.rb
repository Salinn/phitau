class CreatePaddles < ActiveRecord::Migration
  def change
    create_table :paddles do |t|
      t.string :pledge_class
      t.string :picture

      t.timestamps
    end
  end
end
