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
  it "is invalid without an email" do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end
  it "is invalid without a phone number" do
    expect(FactoryGirl.build(:user, phone_number: nil)).to be_valid
  end
  
  it "should return a contacts full name as a string" do
    user = FactoryGirl.build(:user, first_name: 'Matt', last_name: 'Smith')
    user.name.should == "Matt Smith"
  end
  
  #Possibly look into working on tests for mailchimp
  #Possibly look into working on tests for roles, might switch to rollify
end
