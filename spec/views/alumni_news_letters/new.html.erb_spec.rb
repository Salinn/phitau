require 'rails_helper'

RSpec.describe "alumni_news_letters/new", :type => :view do
  before(:each) do
    assign(:alumni_news_letter, AlumniNewsLetter.new(
      :alumni_new_letter_pdf => "MyString"
    ))
  end

  it "renders new alumni_news_letter form" do
    render

    assert_select "form[action=?][method=?]", alumni_news_letters_path, "post" do

      assert_select "input#alumni_news_letter_alumni_new_letter_pdf[name=?]", "alumni_news_letter[alumni_new_letter_pdf]"
    end
  end
end
