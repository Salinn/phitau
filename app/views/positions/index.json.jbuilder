json.array!(@positions) do |position|
  json.extract! position, :id, :position_name, :user_id, :role_id, :on_eboard
  json.url position_url(position, format: :json)
end
