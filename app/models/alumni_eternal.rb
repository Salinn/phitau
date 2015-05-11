class AlumniEternal < ActiveRecord::Base
  has_many :alumni_eternal_stories

  validates :user_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :picture, presence: true
  validates :description, presence: true
end
