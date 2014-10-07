class UpdateHtmlAlumniRelations < ActiveRecord::Migration
  def change
    change_column :alumni_news_letters, :news_letter_html, :text
  end
end
