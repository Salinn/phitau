require 'rails_helper'

RSpec.describe "bids/new", type: :view do
  before(:each) do
    assign(:bid, Bid.new(
      :rush_interview => nil,
      :bid_given => "MyString"
    ))
  end

  it "renders new bid form" do
    render

    assert_select "form[action=?][method=?]", bids_path, "post" do

      assert_select "input#bid_rush_interview_id[name=?]", "bid[rush_interview_id]"

      assert_select "input#bid_bid_given[name=?]", "bid[bid_given]"
    end
  end
end
