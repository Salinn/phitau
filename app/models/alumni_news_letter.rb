class AlumniNewsLetter < ActiveRecord::Base
  mount_uploader :alumni_new_letter_pdf, ImageUploader
end
