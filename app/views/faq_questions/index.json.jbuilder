json.array!(@faq_questions) do |faq_question|
  json.extract! faq_question, :id, :title, :content, :faq_category_id, :order
  json.url faq_question_url(faq_question, format: :json)
end
