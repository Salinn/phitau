require 'rails_helper'

RSpec.describe "alumni_news_letters/edit", :type => :view do
  before(:each) do
    @alumni_news_letter = assign(:alumni_news_letter, AlumniNewsLetter.create!(
      :alumni_new_letter_pdf => "MyString"
    ))
  end

  it "renders the edit alumni_news_letter form" do
    render

    assert_select "form[action=?][method=?]", alumni_news_letter_path(@alumni_news_letter), "post" do

      assert_select "input#alumni_news_letter_alumni_new_letter_pdf[name=?]", "alumni_news_letter[alumni_new_letter_pdf]"
    end
  end
end
