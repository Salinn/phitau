json.array!(@images) do |image|
  json.extract! image, :id, :name, :width, :height
  json.url image_url(image, format: :json)
end
