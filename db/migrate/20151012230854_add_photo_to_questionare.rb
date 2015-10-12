class AddPhotoToQuestionare < ActiveRecord::Migration
  def change
    add_column :rush_interviews, :photo, :string
  end
end
