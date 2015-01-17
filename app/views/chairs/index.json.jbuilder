json.array!(@chairs) do |chair|
  json.extract! chair, :id, :chair_name, :user_id, :role
  json.url chair_url(chair, format: :json)
end
