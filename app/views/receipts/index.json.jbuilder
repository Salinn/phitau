json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :total_spent, :picture_of_receipt, :brother_who_sumbitted, :seen_receipt
  json.url receipt_url(receipt, format: :json)
end
