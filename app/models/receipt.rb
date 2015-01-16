class Receipt < ActiveRecord::Base
  mount_uploader :picture_of_receipt, ImageUploader
end
