json.array!(@paddles) do |paddle|
  json.extract! paddle, :id, :pledge_class, :picture
  json.url paddle_url(paddle, format: :json)
end
