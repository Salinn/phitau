class AddDeletedAtToRushProcess < ActiveRecord::Migration
  def change
    add_column :interview_questionnaires, :deleted_at, :datetime
    add_index :interview_questionnaires, :deleted_at

    add_column :interview_times, :deleted_at, :datetime
    add_index :interview_times, :deleted_at

    add_column :rush_interviews, :deleted_at, :datetime
    add_index :rush_interviews, :deleted_at
  end
end
