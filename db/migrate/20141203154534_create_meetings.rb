class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :date
      t.string :meeting_minutes

      t.timestamps
    end
  end
end
