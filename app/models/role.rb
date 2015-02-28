class Role < ActiveRecord::Base
  belongs_to :users
  has_many :position
end
