class AddConfirmationToUser < ActiveRecord::Migration
  def change
    add_column :users, :confirmed_brother, :boolean
  end
end
