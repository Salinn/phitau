require 'rails_helper'

RSpec.describe "standards_boards/show", type: :view do
  before(:each) do
    @standards_board = assign(:standards_board, StandardsBoard.create!(
      :user => nil,
      :reason => "MyText",
      :position => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
