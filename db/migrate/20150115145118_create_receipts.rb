class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :total_spent
      t.string :picture_of_receipt
      t.integer :brother_who_submitted
      t.boolean :seen_receipt

      t.timestamps
    end
  end
end
