json.array!(@alumni_eternal_stories) do |alumni_eternal_story|
  json.extract! alumni_eternal_story, :id, :user_id, :story
  json.url alumni_eternal_story_url(alumni_eternal_story, format: :json)
end
