json.array!(@standards_boards) do |standards_board|
  json.extract! standards_board, :id, :user_id, :reason, :position_id
  json.url standards_board_url(standards_board, format: :json)
end
