require 'rails_helper'

RSpec.describe "faq_questions/edit", :type => :view do
  before(:each) do
    @faq_question = assign(:faq_question, FaqQuestion.create!(
      :title => "MyString",
      :content => "MyText",
      :faq_category_id => 1,
      :order => 1
    ))
  end

  it "renders the edit faq_question form" do
    render

    assert_select "form[action=?][method=?]", faq_question_path(@faq_question), "post" do

      assert_select "input#faq_question_title[name=?]", "faq_question[title]"

      assert_select "textarea#faq_question_content[name=?]", "faq_question[content]"

      assert_select "input#faq_question_faq_category_id[name=?]", "faq_question[faq_category_id]"

      assert_select "input#faq_question_order[name=?]", "faq_question[order]"
    end
  end
end
