require 'rails_helper'

RSpec.describe "alumni_news_letters/index", :type => :view do
  before(:each) do
    assign(:alumni_news_letters, [
      AlumniNewsLetter.create!(
        :alumni_new_letter_pdf => "Alumni New Letter Pdf"
      ),
      AlumniNewsLetter.create!(
        :alumni_new_letter_pdf => "Alumni New Letter Pdf"
      )
    ])
  end

  it "renders a list of alumni_news_letters" do
    render
    assert_select "tr>td", :text => "Alumni New Letter Pdf".to_s, :count => 2
  end
end
