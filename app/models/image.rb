class Image < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :name, ImageUploader

  belongs_to :post
end
