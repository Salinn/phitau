class AddUserUpdates < ActiveRecord::Migration
  def change
    add_column :users, :ritual_number_local, :string
    add_column :users, :ritual_number_national, :string
    add_column :users, :home_address, :string
    add_column :users, :parents_contact_info, :string
  end
end
