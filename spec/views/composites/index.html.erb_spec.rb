require 'rails_helper'

RSpec.describe "composites/index", type: :view do
  before(:each) do
    assign(:composites, [
      Composite.create!(
        :year => "Year",
        :picture => "Picture"
      ),
      Composite.create!(
        :year => "Year",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of composites" do
    render
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
