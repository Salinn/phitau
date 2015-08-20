require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :description => "MyString",
      :required_event => false,
      :private_event => false,
      :user => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_description[name=?]", "event[description]"

      assert_select "input#event_required_event[name=?]", "event[required_event]"

      assert_select "input#event_private_event[name=?]", "event[private_event]"

      assert_select "input#event_user_id[name=?]", "event[user_id]"
    end
  end
end
