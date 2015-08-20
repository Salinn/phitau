json.array!(@bids) do |bid|
  json.extract! bid, :id, :rush_interview_id, :bid_given
  json.url bid_url(bid, format: :json)
end
