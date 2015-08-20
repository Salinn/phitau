require 'rails_helper'

RSpec.describe "bids/index", type: :view do
  before(:each) do
    assign(:bids, [
      Bid.create!(
        :rush_interview => nil,
        :bid_given => "Bid Given"
      ),
      Bid.create!(
        :rush_interview => nil,
        :bid_given => "Bid Given"
      )
    ])
  end

  it "renders a list of bids" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Bid Given".to_s, :count => 2
  end
end
