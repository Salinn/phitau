require 'rails_helper'

RSpec.describe "bids/edit", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :rush_interview => nil,
      :bid_given => "MyString"
    ))
  end

  it "renders the edit bid form" do
    render

    assert_select "form[action=?][method=?]", bid_path(@bid), "post" do

      assert_select "input#bid_rush_interview_id[name=?]", "bid[rush_interview_id]"

      assert_select "input#bid_bid_given[name=?]", "bid[bid_given]"
    end
  end
end
