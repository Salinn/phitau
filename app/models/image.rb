class Image < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :image_url, ImageUploader

  belongs_to :post
end
