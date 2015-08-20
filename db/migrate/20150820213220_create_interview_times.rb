class CreateInterviewTimes < ActiveRecord::Migration
  def change
    create_table :interview_times do |t|
      t.belongs_to :rush_interview, index: true
      t.time :interview_time
      t.date :interview_date

      t.timestamps
    end
  end
end
