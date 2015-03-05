class AddContactInfoToTextMessages < ActiveRecord::Migration
  def change
    add_column :text_messages, :contact_info, :string
  end
end
