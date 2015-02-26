json.array!(@eboards) do |eboard|
  json.extract! eboard, :id, :position_name, :user_id, :role
  json.url eboard_url(eboard, format: :json)
end
