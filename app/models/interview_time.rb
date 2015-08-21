class InterviewTime < ActiveRecord::Base
  belongs_to :rush_interview

  def create_rush_interview
    rush_interview = RushInterview.create!
    self.rush_interview_id = rush_interview.id
    self.save!
  end

  def update_rush_interview(user)
    assigned_user = (self.rush_interview.user_id == user.id) ? user.id: nil
    self.rush_interview.user_id = assigned_user
    self.save!
  end
end
