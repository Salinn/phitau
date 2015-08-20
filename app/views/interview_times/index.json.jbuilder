json.array!(@interview_times) do |interview_time|
  json.extract! interview_time, :id, :rush_interview_id, :interview_time, :interview_date
  json.url interview_time_url(interview_time, format: :json)
end
