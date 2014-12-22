class AddPostIdToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :post_id, :integer
  end
end
