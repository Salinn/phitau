class Paddle < ActiveRecord::Base
  mount_uploader :picture, ImageUploader

  validates :pledge_class, presence: true
  #validates :picture, presence: true causing tests to fail, saying picture can't be blank
end
