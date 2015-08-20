json.array!(@rush_interviews) do |rush_interview|
  json.extract! rush_interview, :id, :user_id
  json.url rush_interview_url(rush_interview, format: :json)
end
