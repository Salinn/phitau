require 'rails_helper'

RSpec.describe "standards_boards/edit", type: :view do
  before(:each) do
    @standards_board = assign(:standards_board, StandardsBoard.create!(
      :user => nil,
      :reason => "MyText",
      :position => nil
    ))
  end

  it "renders the edit standards_board form" do
    render

    assert_select "form[action=?][method=?]", standards_board_path(@standards_board), "post" do

      assert_select "input#standards_board_user_id[name=?]", "standards_board[user_id]"

      assert_select "textarea#standards_board_reason[name=?]", "standards_board[reason]"

      assert_select "input#standards_board_position_id[name=?]", "standards_board[position_id]"
    end
  end
end
