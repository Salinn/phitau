json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :event_id
  json.url attendance_url(attendance, format: :json)
end
