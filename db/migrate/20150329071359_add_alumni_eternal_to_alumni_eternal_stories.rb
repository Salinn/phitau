class AddAlumniEternalToAlumniEternalStories < ActiveRecord::Migration
  def change
    add_column :alumni_eternal_stories, :alumni_eternal_id ,:integer
  end
end
