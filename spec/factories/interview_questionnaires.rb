FactoryGirl.define do
  factory :interview_questionnaire do
    user_id 1
    date_of_birth "1992-05-28"
    hometown "Boston, MA"
    current_address "Res Hall B"
    room_number "1234"
    grade_point_average "3.3"
    major "Software Engineering"
    year_in_school 1
    nickname "Tall Paul"
    outside_activities "Student Government, RA, TA"
    hobbies "Music, Reading, Hockey"
    brothers_you_know "Kent, Kyle, Tim, Steve"
    rush_events_attended "Dodgeball, Kickball, Monday Night Football"
    reason_for_rushing "I feel like I fit in really well with this group of guys and want to continue hanging out"
  end
end
