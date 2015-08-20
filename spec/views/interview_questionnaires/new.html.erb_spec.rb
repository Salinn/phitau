require 'rails_helper'

RSpec.describe "interview_questionnaires/new", type: :view do
  before(:each) do
    assign(:interview_questionnaire, InterviewQuestionnaire.new(
      :rush_interview => nil,
      :hometown => "MyString",
      :current_address => "MyString",
      :room_number => "MyString",
      :grade_point_average => "MyString",
      :major => "MyString",
      :year_in_school => 1,
      :nickname => "MyString",
      :outside_activities => "MyText",
      :hobbies => "MyText",
      :brothers_you_know => "MyText",
      :rush_events_attended => "MyString",
      :reason_for_rushing => "MyText"
    ))
  end

  it "renders new interview_questionnaire form" do
    render

    assert_select "form[action=?][method=?]", interview_questionnaires_path, "post" do

      assert_select "input#interview_questionnaire_rush_interview_id[name=?]", "interview_questionnaire[rush_interview_id]"

      assert_select "input#interview_questionnaire_hometown[name=?]", "interview_questionnaire[hometown]"

      assert_select "input#interview_questionnaire_current_address[name=?]", "interview_questionnaire[current_address]"

      assert_select "input#interview_questionnaire_room_number[name=?]", "interview_questionnaire[room_number]"

      assert_select "input#interview_questionnaire_grade_point_average[name=?]", "interview_questionnaire[grade_point_average]"

      assert_select "input#interview_questionnaire_major[name=?]", "interview_questionnaire[major]"

      assert_select "input#interview_questionnaire_year_in_school[name=?]", "interview_questionnaire[year_in_school]"

      assert_select "input#interview_questionnaire_nickname[name=?]", "interview_questionnaire[nickname]"

      assert_select "textarea#interview_questionnaire_outside_activities[name=?]", "interview_questionnaire[outside_activities]"

      assert_select "textarea#interview_questionnaire_hobbies[name=?]", "interview_questionnaire[hobbies]"

      assert_select "textarea#interview_questionnaire_brothers_you_know[name=?]", "interview_questionnaire[brothers_you_know]"

      assert_select "input#interview_questionnaire_rush_events_attended[name=?]", "interview_questionnaire[rush_events_attended]"

      assert_select "textarea#interview_questionnaire_reason_for_rushing[name=?]", "interview_questionnaire[reason_for_rushing]"
    end
  end
end
