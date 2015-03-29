class Paddle < ActiveRecord::Base
  mount_uploader :picture, ImageUploader
end
