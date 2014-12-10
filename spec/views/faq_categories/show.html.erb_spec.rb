require 'rails_helper'

RSpec.describe "faq_categories/show", :type => :view do
  before(:each) do
    @faq_category = assign(:faq_category, FaqCategory.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
