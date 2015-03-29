json.array!(@composites) do |composite|
  json.extract! composite, :id, :year, :picture
  json.url composite_url(composite, format: :json)
end
