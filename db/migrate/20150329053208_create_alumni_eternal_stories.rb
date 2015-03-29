class CreateAlumniEternalStories < ActiveRecord::Migration
  def change
    create_table :alumni_eternal_stories do |t|
      t.integer :user_id
      t.text :story

      t.timestamps
    end
  end
end
