class AlumniEternalStory < ActiveRecord::Base
  mount_uploader :picture, ImageUploader

  validates :user_id, presence: true
  validates :story, presence: true
  validates :alumni_eternal_id, presence: true
end
