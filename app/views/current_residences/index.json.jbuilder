json.array!(@current_residences) do |current_residence|
  json.extract! current_residence, :id, :building_name, :map_location
  json.url current_residence_url(current_residence, format: :json)
end
