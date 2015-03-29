require 'rails_helper'

RSpec.describe "alumni_eternal_stories/show", type: :view do
  before(:each) do
    @alumni_eternal_story = assign(:alumni_eternal_story, AlumniEternalStory.create!(
      :user_id => 1,
      :story => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
