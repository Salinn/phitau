class RemoveUnneededTables < ActiveRecord::Migration
  def change
    drop_table :attendancespos
    drop_table :meetings
    drop_table :user_positions
  end
end
