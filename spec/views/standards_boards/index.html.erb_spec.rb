require 'rails_helper'

RSpec.describe "standards_boards/index", type: :view do
  before(:each) do
    assign(:standards_boards, [
      StandardsBoard.create!(
        :user => nil,
        :reason => "MyText",
        :position => nil
      ),
      StandardsBoard.create!(
        :user => nil,
        :reason => "MyText",
        :position => nil
      )
    ])
  end

  it "renders a list of standards_boards" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
