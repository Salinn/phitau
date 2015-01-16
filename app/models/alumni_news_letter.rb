class AlumniNewsLetter < ActiveRecord::Base
  mount_uploader :alumni_new_letter_pdf, ImageUploader

  validates :news_letter_html, presence: true
end
