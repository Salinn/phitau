require 'rails_helper'

RSpec.describe "positions/index", :type => :view do
  before(:each) do
    assign(:positions, [
      Position.create!(),
      Position.create!()
    ])
  end

  it "renders a list of positions" do
    render
  end
end
