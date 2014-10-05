require 'rails_helper'

RSpec.describe "positions/show", :type => :view do
  before(:each) do
    @position = assign(:position, Position.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
