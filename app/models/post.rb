class Post < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :image, ImageUploader

  searchkick autocomplete: ['title'], suggest: ['title']
end
