class InterviewQuestionnaire < ActiveRecord::Base
  belongs_to :rush_interview
  has_one :bid
  belongs_to :user
  belongs_to :current_residence

  acts_as_paranoid

  def created_within_same_month?
    t = Time.now
    t.year == self.created_at.year and t.month == self.created_at.month
  end
end
