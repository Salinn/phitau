class Event < ActiveRecord::Base
  belongs_to :user

  # validates :start_time, presence: true
  # validates :end_time, presence: true
  validates :event_date, presence: true
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 10 }
  validates :user_id, presence: true
end
