require 'rails_helper'

RSpec.describe "faq_questions/show", :type => :view do
  before(:each) do
    @faq_question = assign(:faq_question, FaqQuestion.create!(
      :title => "Title",
      :content => "MyText",
      :faq_category_id => 1,
      :order => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
