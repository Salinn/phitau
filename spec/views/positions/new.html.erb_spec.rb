require 'rails_helper'

RSpec.describe "positions/new", :type => :view do
  before(:each) do
    assign(:position, Position.new())
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do
    end
  end
end
