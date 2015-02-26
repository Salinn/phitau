class ChangeUserFromRoleToStatus < ActiveRecord::Migration
  def change
    remove_column :users, :role
    add_column :users, :user_status, :string
  end
end
