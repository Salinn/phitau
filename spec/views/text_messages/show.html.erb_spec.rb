require 'rails_helper'

RSpec.describe "text_messages/show", :type => :view do
  before(:each) do
    @text_message = assign(:text_message, TextMessage.create!(
      :to_number => "To Number",
      :user_group => "User Group",
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/To Number/)
    expect(rendered).to match(/User Group/)
    expect(rendered).to match(/Message/)
  end
end
