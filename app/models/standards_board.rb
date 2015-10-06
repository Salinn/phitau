class StandardsBoard < ActiveRecord::Base
  belongs_to :user
  belongs_to :position

  def updated_completed
    update_attribute(:completed, !self.completed)
  end
end
