class InterviewQuestionnaire < ActiveRecord::Base
  belongs_to :rush_interview
  has_one :bid
  belongs_to :user

  acts_as_paranoid

  after_create :create_bid

  def created_within_same_month?
    t = Time.now
    t.year == self.created_at.year and t.month == self.created_at.month
  end

  def create_bid
    Bid.create!(rush_interview_id: self.id)
  end
end
