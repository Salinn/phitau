require 'rails_helper'

RSpec.describe "alumni_eternal_stories/new", type: :view do
  before(:each) do
    assign(:alumni_eternal_story, AlumniEternalStory.new(
      :user_id => 1,
      :story => "MyText"
    ))
  end

  it "renders new alumni_eternal_story form" do
    render

    assert_select "form[action=?][method=?]", alumni_eternal_stories_path, "post" do

      assert_select "input#alumni_eternal_story_user_id[name=?]", "alumni_eternal_story[user_id]"

      assert_select "textarea#alumni_eternal_story_story[name=?]", "alumni_eternal_story[story]"
    end
  end
end
