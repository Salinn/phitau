require 'rails_helper'

RSpec.describe "meetings/index", :type => :view do
  before(:each) do
    assign(:meetings, [
      Meeting.create!(
        :meeting_minutes => "Meeting Minutes"
      ),
      Meeting.create!(
        :meeting_minutes => "Meeting Minutes"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    assert_select "tr>td", :text => "Meeting Minutes".to_s, :count => 2
  end
end
