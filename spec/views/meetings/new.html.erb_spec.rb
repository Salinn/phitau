require 'rails_helper'

RSpec.describe "meetings/new", :type => :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      :meeting_minutes => "MyString"
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input#meeting_meeting_minutes[name=?]", "meeting[meeting_minutes]"
    end
  end
end
