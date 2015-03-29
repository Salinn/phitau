require 'rails_helper'

RSpec.describe "alumni_eternals/show", type: :view do
  before(:each) do
    @alumni_eternal = assign(:alumni_eternal, AlumniEternal.create!(
      :user_id => 1,
      :first_name => "First Name",
      :last_name => "Last Name",
      :picture => "Picture",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/MyText/)
  end
end
