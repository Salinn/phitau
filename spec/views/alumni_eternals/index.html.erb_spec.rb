require 'rails_helper'

RSpec.describe "alumni_eternals/index", type: :view do
  before(:each) do
    assign(:alumni_eternals, [
      AlumniEternal.create!(
        :user_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :picture => "Picture",
        :description => "MyText"
      ),
      AlumniEternal.create!(
        :user_id => 1,
        :first_name => "First Name",
        :last_name => "Last Name",
        :picture => "Picture",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of alumni_eternals" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
