json.array!(@community_services) do |community_service|
  json.extract! community_service, :id
  json.url community_service_url(community_service, format: :json)
end
