class Position < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  validates :position_name, presence: true
  validates :user_id, numericality: { only_integer: true }
  validates :role_id, numericality: { only_integer: true }
end
