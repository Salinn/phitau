require 'rails_helper'

RSpec.describe "interview_times/edit", type: :view do
  before(:each) do
    @interview_time = assign(:interview_time, InterviewTime.create!(
      :rush_interview => nil
    ))
  end

  it "renders the edit interview_time form" do
    render

    assert_select "form[action=?][method=?]", interview_time_path(@interview_time), "post" do

      assert_select "input#interview_time_rush_interview_id[name=?]", "interview_time[rush_interview_id]"
    end
  end
end
