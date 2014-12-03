require 'rails_helper'

RSpec.describe "meetings/edit", :type => :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :meeting_minutes => "MyString"
    ))
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(@meeting), "post" do

      assert_select "input#meeting_meeting_minutes[name=?]", "meeting[meeting_minutes]"
    end
  end
end
