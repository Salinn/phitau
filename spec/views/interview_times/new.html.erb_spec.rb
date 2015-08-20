require 'rails_helper'

RSpec.describe "interview_times/new", type: :view do
  before(:each) do
    assign(:interview_time, InterviewTime.new(
      :rush_interview => nil
    ))
  end

  it "renders new interview_time form" do
    render

    assert_select "form[action=?][method=?]", interview_times_path, "post" do

      assert_select "input#interview_time_rush_interview_id[name=?]", "interview_time[rush_interview_id]"
    end
  end
end
