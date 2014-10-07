class CreateAlumniNewsLetters < ActiveRecord::Migration
  def change
    create_table :alumni_news_letters do |t|
      t.date :released_date
      t.string :alumni_new_letter_pdf

      t.timestamps
    end
  end
end
