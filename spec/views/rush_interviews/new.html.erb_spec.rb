require 'rails_helper'

RSpec.describe "rush_interviews/new", type: :view do
  before(:each) do
    assign(:rush_interview, RushInterview.new(
      :user => nil
    ))
  end

  it "renders new rush_interview form" do
    render

    assert_select "form[action=?][method=?]", rush_interviews_path, "post" do

      assert_select "input#rush_interview_user_id[name=?]", "rush_interview[user_id]"
    end
  end
end
