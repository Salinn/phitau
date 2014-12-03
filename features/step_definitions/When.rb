require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When(/^I go on to the "([^\"]*)" page$/) do |page_name|
  click_link(page_name, match: :first)
end

When(/^I sign in$/) do
  fill_in "user_email", :with => "pmdspam@gmail.com"
  fill_in "user_password", :with => "password123"
  click_button("Log in")
  cookies[:token] = User.find_by_email!(email).token
end