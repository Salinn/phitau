class RushInterview < ActiveRecord::Base
  belongs_to :user

  has_one :interview_time
  has_one :bid
  has_one :interview_questionnaire

  accepts_nested_attributes_for :interview_time
  accepts_nested_attributes_for :interview_questionnaire
  accepts_nested_attributes_for :bid

  BIDOPTIONS = ['', 'Yes', 'No', 'Deferred']
end
