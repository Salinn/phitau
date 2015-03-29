json.array!(@alumni_eternals) do |alumni_eternal|
  json.extract! alumni_eternal, :id, :user_id, :first_name, :last_name, :picture, :description
  json.url alumni_eternal_url(alumni_eternal, format: :json)
end
