class UpdateQualificationToUserNow < ActiveRecord::Migration
  def change
    remove_belongs_to :interview_questionnaires, :rush_interview
    add_belongs_to :interview_questionnaires, :user
  end
end
