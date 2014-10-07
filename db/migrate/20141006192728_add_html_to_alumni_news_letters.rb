class AddHtmlToAlumniNewsLetters < ActiveRecord::Migration
  def change
    add_column :alumni_news_letters, :news_letter_html, :string
  end
end
