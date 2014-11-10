require 'rails_helper'

RSpec.describe "text_messages/new", :type => :view do
  before(:each) do
    assign(:text_message, TextMessage.new(
      :to_number => "MyString",
      :user_group => "MyString",
      :message => "MyString"
    ))
  end

  it "renders new text_message form" do
    render

    assert_select "form[action=?][method=?]", text_messages_path, "post" do

      assert_select "input#text_message_to_number[name=?]", "text_message[to_number]"

      assert_select "input#text_message_user_group[name=?]", "text_message[user_group]"

      assert_select "input#text_message_message[name=?]", "text_message[message]"
    end
  end
end
