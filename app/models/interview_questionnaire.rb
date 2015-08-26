class InterviewQuestionnaire < ActiveRecord::Base
  belongs_to :rush_interview

  def created_within_same_month?
    t = Time.now
    t.year == self.created_at.year and t.month == self.created_at.month
  end
end
