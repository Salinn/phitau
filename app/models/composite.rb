class Composite < ActiveRecord::Base
  mount_uploader :picture, ImageUploader

  validates :year, presence: true
  validates :picture, presence: true
end
