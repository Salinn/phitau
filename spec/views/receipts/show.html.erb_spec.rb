require 'rails_helper'

RSpec.describe "receipts/show", :type => :view do
  before(:each) do
    @receipt = assign(:receipt, Receipt.create!(
      :total_spent => "Total Spent",
      :picture_of_receipt => "Picture Of Receipt",
      :brother_who_sumbitted => "",
      :seen_receipt => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Total Spent/)
    expect(rendered).to match(/Picture Of Receipt/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
