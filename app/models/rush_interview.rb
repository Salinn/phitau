class RushInterview < ActiveRecord::Base
  belongs_to :user

  has_one :interview_time
  has_one :bid
  has_one :interview_questionnaire

  accepts_nested_attributes_for :interview_time
  accepts_nested_attributes_for :interview_questionnaire
  accepts_nested_attributes_for :bid

  mount_uploader :photo, ImageUploader

  acts_as_paranoid

  after_create :create_bid

  BIDOPTIONS = ['', 'Yes', 'No', 'Deferred']

  def create_bid
    Bid.create!(rush_interview_id: self.id)
  end

  # scope :most_recent_interviews, ->  {
  #   where("rush_interviews.created_at < ?", (Time.now.month - 2.months))
  # }

  #default_scope joins(:user).order("users.first_name ASC")
end
