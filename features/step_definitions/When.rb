require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When(/^I am on the homepage$/) do
  visit root_path
end