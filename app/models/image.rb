class Image < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :picture, ImageUploader

  belongs_to :post
end
