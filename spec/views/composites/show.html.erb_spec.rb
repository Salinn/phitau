require 'rails_helper'

RSpec.describe "composites/show", type: :view do
  before(:each) do
    @composite = assign(:composite, Composite.create!(
      :year => "Year",
      :picture => "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Picture/)
  end
end
