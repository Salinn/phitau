require 'rails_helper'

RSpec.describe "faq_questions/index", :type => :view do
  before(:each) do
    assign(:faq_questions, [
      FaqQuestion.create!(
        :title => "Title",
        :content => "MyText",
        :faq_category_id => 1,
        :order => 2
      ),
      FaqQuestion.create!(
        :title => "Title",
        :content => "MyText",
        :faq_category_id => 1,
        :order => 2
      )
    ])
  end

  it "renders a list of faq_questions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
