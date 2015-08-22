class UpdateTextMessages < ActiveRecord::Migration
  def change
    change_column :text_messages, :message, :text
  end
end
