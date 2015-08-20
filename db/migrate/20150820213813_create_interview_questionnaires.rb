class CreateInterviewQuestionnaires < ActiveRecord::Migration
  def change
    create_table :interview_questionnaires do |t|
      t.belongs_to :rush_interview, index: true
      t.date :date_of_birth
      t.string :hometown
      t.string :current_address
      t.string :room_number
      t.string :grade_point_average
      t.string :major
      t.integer :year_in_school
      t.string :nickname
      t.text :outside_activities
      t.text :hobbies
      t.text :brothers_you_know
      t.string :rush_events_attended
      t.text :reason_for_rushing

      t.timestamps
    end
  end
end
