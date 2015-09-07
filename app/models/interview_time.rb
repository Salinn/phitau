class InterviewTime < ActiveRecord::Base
  belongs_to :rush_interview

  def create_rush_interview
    rush_interview = RushInterview.create!
    self.rush_interview_id = rush_interview.id
    self.save!
  end

  def update_rush_interview(user)
    create_rush_interview unless self.rush_interview_id
    assigned_user = (self.rush_interview.user_id == user.id) ? nil : user.id
    self.rush_interview.update_attribute(:user_id, assigned_user)

    send_interview_email(user) unless assigned_user.nil?

    (assigned_user == nil) ? 'Interview time was successfully cleared' : 'Interview was successfully scheduled.'
  end

  def send_interview_email(user)
    create_questionaire(user) unless(user.interview_questionnaires.any? && user.interview_questionnaires.last.created_within_same_month?)
    UserMailer.interview_time_email(user).deliver!
  end

  def create_questionaire(user)
    InterviewQuestionnaire.create!(user_id: user.id)
  end
end
