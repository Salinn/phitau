require 'rails_helper'

RSpec.describe "rush_interviews/show", type: :view do
  before(:each) do
    @rush_interview = assign(:rush_interview, RushInterview.create!(
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
