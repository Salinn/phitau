require 'rails_helper'

RSpec.describe "alumni_eternal_stories/index", type: :view do
  before(:each) do
    assign(:alumni_eternal_stories, [
      AlumniEternalStory.create!(
        :user_id => 1,
        :story => "MyText"
      ),
      AlumniEternalStory.create!(
        :user_id => 1,
        :story => "MyText"
      )
    ])
  end

  it "renders a list of alumni_eternal_stories" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
