require 'rails_helper'

RSpec.describe "meetings/show", :type => :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :meeting_minutes => "Meeting Minutes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Meeting Minutes/)
  end
end
