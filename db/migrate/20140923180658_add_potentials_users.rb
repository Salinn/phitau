class AddPotentialsUsers < ActiveRecord::Migration
  def change
    add_column :users, :activities, :string
    add_column :users, :phone_number, :string
    add_column :users, :position, :string
  end
end
