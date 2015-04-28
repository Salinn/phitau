class RemoveUnneededTables < ActiveRecord::Migration
  def change
    drop_table :attendances
    drop_table :meetings
    drop_table :user_positions
  end
end
