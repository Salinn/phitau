class AddInterviewContactToUsers < ActiveRecord::Migration
  def change
    add_column :users, :home_town, :string
    add_column :users, :state, :string
    add_column :users, :big_brother, :string
    add_column :users, :major, :string
    add_column :users, :pledge_class, :string
  end
end
