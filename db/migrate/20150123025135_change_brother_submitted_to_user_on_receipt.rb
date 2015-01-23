class ChangeBrotherSubmittedToUserOnReceipt < ActiveRecord::Migration
  def change
    remove_column :receipts, :brother_who_submitted
    add_column :receipts, :user_id, :integer
  end
end
