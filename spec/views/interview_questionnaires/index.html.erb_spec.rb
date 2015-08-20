require 'rails_helper'

RSpec.describe "interview_questionnaires/index", type: :view do
  before(:each) do
    assign(:interview_questionnaires, [
      InterviewQuestionnaire.create!(
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
      ),
      InterviewQuestionnaire.create!(
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
      )
    ])
  end

  it "renders a list of interview_questionnaires" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Hometown".to_s, :count => 2
    assert_select "tr>td", :text => "Current Address".to_s, :count => 2
    assert_select "tr>td", :text => "Room Number".to_s, :count => 2
    assert_select "tr>td", :text => "Grade Point Average".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Rush Events Attended".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
