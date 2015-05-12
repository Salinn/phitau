require 'rails_helper'
require 'spec_helper'

#http://everydayrails.com/2012/03/19/testing-series-rspec-models-factory-girl.html

RSpec.describe User, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "is invalid without a first name" do
    expect(FactoryGirl.build(:user, first_name: nil)).to_not be_valid
  end
  it "is invalid without a last name" do
    expect(FactoryGirl.build(:user, last_name: nil)).to_not be_valid
  end
  it "has a valid user status"
  # its(:email) {should == 'pmdspam@gmail.com'}
  # its(:first_name) {should == 'Paul'}
  # its(:last_name) {should == 'Darragh'}
  # its(:phone_number) {should == '15088388579'}
  # its(:role) {should == 'admin'}

end
