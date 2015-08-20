require 'rails_helper'

RSpec.describe "interview_questionnaires/show", type: :view do
  before(:each) do
    @interview_questionnaire = assign(:interview_questionnaire, InterviewQuestionnaire.create!(
      :rush_interview => nil,
      :hometown => "Hometown",
      :current_address => "Current Address",
      :room_number => "Room Number",
      :grade_point_average => "Grade Point Average",
      :major => "Major",
      :year_in_school => 1,
      :nickname => "Nickname",
      :outside_activities => "MyText",
      :hobbies => "MyText",
      :brothers_you_know => "MyText",
      :rush_events_attended => "Rush Events Attended",
      :reason_for_rushing => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Hometown/)
    expect(rendered).to match(/Current Address/)
    expect(rendered).to match(/Room Number/)
    expect(rendered).to match(/Grade Point Average/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Rush Events Attended/)
    expect(rendered).to match(/MyText/)
  end
end
