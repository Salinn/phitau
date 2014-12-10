require 'rails_helper'

RSpec.describe "faq_categories/new", :type => :view do
  before(:each) do
    assign(:faq_category, FaqCategory.new(
      :title => "MyString"
    ))
  end

  it "renders new faq_category form" do
    render

    assert_select "form[action=?][method=?]", faq_categories_path, "post" do

      assert_select "input#faq_category_title[name=?]", "faq_category[title]"
    end
  end
end
