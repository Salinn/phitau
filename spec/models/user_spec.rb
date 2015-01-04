require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { FactoryGirl.create(:user) }

  its(:email) {should == 'pmdspam@gmail.com'}
  its(:first_name) {should == 'Paul'}
  its(:last_name) {should == 'Darragh'}
  its(:phone_number) {should == '15088388579'}
  its(:role) {should == 'admin'}

end
