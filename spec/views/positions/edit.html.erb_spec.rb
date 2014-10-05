require 'rails_helper'

RSpec.describe "positions/edit", :type => :view do
  before(:each) do
    @position = assign(:position, Position.create!())
  end

  it "renders the edit position form" do
    render

    assert_select "form[action=?][method=?]", position_path(@position), "post" do
    end
  end
end
