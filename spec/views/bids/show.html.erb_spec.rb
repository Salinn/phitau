require 'rails_helper'

RSpec.describe "bids/show", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :rush_interview => nil,
      :bid_given => "Bid Given"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Bid Given/)
  end
end
