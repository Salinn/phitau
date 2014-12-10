json.array!(@faq_categories) do |faq_category|
  json.extract! faq_category, :id, :title
  json.url faq_category_url(faq_category, format: :json)
end
