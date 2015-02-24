class CreateCommunityServices < ActiveRecord::Migration
  def change
    create_table :community_services do |t|
      t.string :event_name
      t.date :date_of_event
      t.string :link_to_event
      t.integer :user_id
      t.timestamps
    end
  end
end
