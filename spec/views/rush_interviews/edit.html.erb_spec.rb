require 'rails_helper'

RSpec.describe "rush_interviews/edit", type: :view do
  before(:each) do
    @rush_interview = assign(:rush_interview, RushInterview.create!(
      :user => nil
    ))
  end

  it "renders the edit rush_interview form" do
    render

    assert_select "form[action=?][method=?]", rush_interview_path(@rush_interview), "post" do

      assert_select "input#rush_interview_user_id[name=?]", "rush_interview[user_id]"
    end
  end
end
