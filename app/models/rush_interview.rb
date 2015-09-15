class RushInterview < ActiveRecord::Base
  belongs_to :user

  has_one :interview_time
  has_one :bid
  has_one :interview_questionnaire

  accepts_nested_attributes_for :interview_time
  accepts_nested_attributes_for :interview_questionnaire
  accepts_nested_attributes_for :bid

  acts_as_paranoid

  BIDOPTIONS = ['', 'Yes', 'No', 'Deferred']

  scope :most_recent_interviews, ->  {
    where("rush_interviews.created_at > ?", (Time.now.month + 2.months))
  }

  #default_scope joins(:user).order("users.first_name ASC")
end
