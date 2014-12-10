require 'rails_helper'

RSpec.describe "faq_categories/index", :type => :view do
  before(:each) do
    assign(:faq_categories, [
      FaqCategory.create!(
        :title => "Title"
      ),
      FaqCategory.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of faq_categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
