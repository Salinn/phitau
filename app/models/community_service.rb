class CommunityService < ActiveRecord::Base
  belongs_to :user

  validates :event_name, presence: true
  validates :date_of_event, presence: true
  validates :user_id, presence: true
  validates :hours_volunteered, presence: true
end
