class StandardsBoard < ActiveRecord::Base
  belongs_to :user
  belongs_to :position

  after_create :send_email

  def updated_completed
    update_attribute(:completed, !self.completed)
  end

  def send_email
    UserMailer.delay(queue: 'email', run_at: 5.minutes.from_now).standards_board_email(self)
  end
end
