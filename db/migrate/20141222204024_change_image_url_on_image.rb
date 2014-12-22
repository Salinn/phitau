class ChangeImageUrlOnImage < ActiveRecord::Migration
  def change
    add_column :images, :picture, :string
    remove_column :images, :image_url, :string
  end
end
