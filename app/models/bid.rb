class Bid < ActiveRecord::Base
  belongs_to :rush_interview

  def current_residence
    rush_interview.user.interview_questionnaires.last.current_residence.map_location
  end

  def room_number
    rush_interview.user.interview_questionnaires.last.room_number.to_i
  end
end
