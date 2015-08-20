class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.time :start_time
      t.time :end_time
      t.date :event_date
      t.boolean :required_event
      t.boolean :private_event
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
