require 'rails_helper'

RSpec.describe "chairs/index", :type => :view do
  before(:each) do
    assign(:chairs, [
      Chair.create!(
        :chair_name => "Chair Name",
        :user_id => 1,
        :role => "Role"
      ),
      Chair.create!(
        :chair_name => "Chair Name",
        :user_id => 1,
        :role => "Role"
      )
    ])
  end

  it "renders a list of chairs" do
    render
    assert_select "tr>td", :text => "Chair Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
