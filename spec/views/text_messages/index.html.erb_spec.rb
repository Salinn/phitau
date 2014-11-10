require 'rails_helper'

RSpec.describe "text_messages/index", :type => :view do
  before(:each) do
    assign(:text_messages, [
      TextMessage.create!(
        :to_number => "To Number",
        :user_group => "User Group",
        :message => "Message"
      ),
      TextMessage.create!(
        :to_number => "To Number",
        :user_group => "User Group",
        :message => "Message"
      )
    ])
  end

  it "renders a list of text_messages" do
    render
    assert_select "tr>td", :text => "To Number".to_s, :count => 2
    assert_select "tr>td", :text => "User Group".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
