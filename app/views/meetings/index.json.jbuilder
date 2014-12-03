json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :date, :meeting_minutes
  json.url meeting_url(meeting, format: :json)
end
