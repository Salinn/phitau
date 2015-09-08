require 'rails_helper'

RSpec.describe AlumniNewsLetter, :type => :model do
  it { validate_presence_of(:news_letter_html) }
end
