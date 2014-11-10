class CreateTextMessages < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.string :to_number
      t.string :user_group
      t.string :message

      t.timestamps
    end
  end
end
