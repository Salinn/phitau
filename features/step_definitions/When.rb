require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When(/^I go on to the "([^\"]*)" page$/) do |page_name|
  click_link(page_name, match: :first)
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field.gsub(' ', '_'), :with => value)
end

And(/^I click the "([^"]*)" button$/) do |button_name|
  click_button(button_name)
end