class Image < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :name, ImageUploader
end
