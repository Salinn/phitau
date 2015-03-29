class Composite < ActiveRecord::Base
  mount_uploader :picture, ImageUploader
end
