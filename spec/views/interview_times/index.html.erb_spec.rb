require 'rails_helper'

RSpec.describe "interview_times/index", type: :view do
  before(:each) do
    assign(:interview_times, [
      InterviewTime.create!(
        :rush_interview => nil
      ),
      InterviewTime.create!(
        :rush_interview => nil
      )
    ])
  end

  it "renders a list of interview_times" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
