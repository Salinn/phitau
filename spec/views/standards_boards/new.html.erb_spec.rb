require 'rails_helper'

RSpec.describe "standards_boards/new", type: :view do
  before(:each) do
    assign(:standards_board, StandardsBoard.new(
      :user => nil,
      :reason => "MyText",
      :position => nil
    ))
  end

  it "renders new standards_board form" do
    render

    assert_select "form[action=?][method=?]", standards_boards_path, "post" do

      assert_select "input#standards_board_user_id[name=?]", "standards_board[user_id]"

      assert_select "textarea#standards_board_reason[name=?]", "standards_board[reason]"

      assert_select "input#standards_board_position_id[name=?]", "standards_board[position_id]"
    end
  end
end
