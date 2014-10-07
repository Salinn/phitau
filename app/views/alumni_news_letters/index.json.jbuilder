json.array!(@alumni_news_letters) do |alumni_news_letter|
  json.extract! alumni_news_letter, :id, :released_date, :alumni_new_letter_pdf
  json.url alumni_news_letter_url(alumni_news_letter, format: :json)
end
