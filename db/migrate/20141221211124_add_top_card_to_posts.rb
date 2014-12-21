class AddTopCardToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :top_card, :boolean
  end
end
