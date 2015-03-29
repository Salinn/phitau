require 'rails_helper'

RSpec.describe "alumni_eternal_stories/edit", type: :view do
  before(:each) do
    @alumni_eternal_story = assign(:alumni_eternal_story, AlumniEternalStory.create!(
      :user_id => 1,
      :story => "MyText"
    ))
  end

  it "renders the edit alumni_eternal_story form" do
    render

    assert_select "form[action=?][method=?]", alumni_eternal_story_path(@alumni_eternal_story), "post" do

      assert_select "input#alumni_eternal_story_user_id[name=?]", "alumni_eternal_story[user_id]"

      assert_select "textarea#alumni_eternal_story_story[name=?]", "alumni_eternal_story[story]"
    end
  end
end
