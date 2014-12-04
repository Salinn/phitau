json.array!(@flower_deliveries) do |flower_delivery|
  json.extract! flower_delivery, :id
  json.url flower_delivery_url(flower_delivery, format: :json)
end
