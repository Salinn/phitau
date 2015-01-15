require 'rails_helper'

RSpec.describe "receipts/index", :type => :view do
  before(:each) do
    assign(:receipts, [
      Receipt.create!(
        :total_spent => "Total Spent",
        :picture_of_receipt => "Picture Of Receipt",
        :brother_who_sumbitted => "",
        :seen_receipt => false
      ),
      Receipt.create!(
        :total_spent => "Total Spent",
        :picture_of_receipt => "Picture Of Receipt",
        :brother_who_sumbitted => "",
        :seen_receipt => false
      )
    ])
  end

  it "renders a list of receipts" do
    render
    assert_select "tr>td", :text => "Total Spent".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Of Receipt".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
