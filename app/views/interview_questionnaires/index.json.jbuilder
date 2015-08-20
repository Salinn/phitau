json.array!(@interview_questionnaires) do |interview_questionnaire|
  json.extract! interview_questionnaire, :id, :rush_interview_id, :date_of_birth, :hometown, :current_address, :room_number, :grade_point_average, :major, :year_in_school, :nickname, :outside_activities, :hobbies, :brothers_you_know, :rush_events_attended, :reason_for_rushing
  json.url interview_questionnaire_url(interview_questionnaire, format: :json)
end
