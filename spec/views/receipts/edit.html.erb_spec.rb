require 'rails_helper'

RSpec.describe "receipts/edit", :type => :view do
  before(:each) do
    @receipt = assign(:receipt, Receipt.create!(
      :total_spent => "MyString",
      :picture_of_receipt => "MyString",
      :brother_who_sumbitted => "",
      :seen_receipt => false
    ))
  end

  it "renders the edit receipt form" do
    render

    assert_select "form[action=?][method=?]", receipt_path(@receipt), "post" do

      assert_select "input#receipt_total_spent[name=?]", "receipt[total_spent]"

      assert_select "input#receipt_picture_of_receipt[name=?]", "receipt[picture_of_receipt]"

      assert_select "input#receipt_brother_who_sumbitted[name=?]", "receipt[brother_who_sumbitted]"

      assert_select "input#receipt_seen_receipt[name=?]", "receipt[seen_receipt]"
    end
  end
end
