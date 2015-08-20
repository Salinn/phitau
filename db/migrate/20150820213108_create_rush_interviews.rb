class CreateRushInterviews < ActiveRecord::Migration
  def change
    create_table :rush_interviews do |t|
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
