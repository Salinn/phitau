require 'rails_helper'

RSpec.describe "faq_categories/edit", :type => :view do
  before(:each) do
    @faq_category = assign(:faq_category, FaqCategory.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit faq_category form" do
    render

    assert_select "form[action=?][method=?]", faq_category_path(@faq_category), "post" do

      assert_select "input#faq_category_title[name=?]", "faq_category[title]"
    end
  end
end
