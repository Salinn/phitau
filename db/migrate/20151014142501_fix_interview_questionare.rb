class FixInterviewQuestionare < ActiveRecord::Migration
  def change
    add_belongs_to :interview_questionnaires, :current_residence
    remove_column :interview_questionnaires, :current_address
  end
end
