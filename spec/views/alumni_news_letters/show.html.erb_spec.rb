require 'rails_helper'

RSpec.describe "alumni_news_letters/show", :type => :view do
  before(:each) do
    @alumni_news_letter = assign(:alumni_news_letter, AlumniNewsLetter.create!(
      :alumni_new_letter_pdf => "Alumni New Letter Pdf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Alumni New Letter Pdf/)
  end
end
