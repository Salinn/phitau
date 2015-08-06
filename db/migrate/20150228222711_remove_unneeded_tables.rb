class RemoveUnneededTables < ActiveRecord::Migration
  def change
    drop_table :attendances
    drop_table :user_positions
  end
end
