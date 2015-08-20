require 'rails_helper'

RSpec.describe "interview_times/show", type: :view do
  before(:each) do
    @interview_time = assign(:interview_time, InterviewTime.create!(
      :rush_interview => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
