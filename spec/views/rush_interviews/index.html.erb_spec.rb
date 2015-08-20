require 'rails_helper'

RSpec.describe "rush_interviews/index", type: :view do
  before(:each) do
    assign(:rush_interviews, [
      RushInterview.create!(
        :user => nil
      ),
      RushInterview.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of rush_interviews" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
