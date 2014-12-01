require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Then(/^I should be redirected back to the "([^"]*)"$/) do |page_name|
  current_path.should == path_to(page_name)
end

And(/^there should be a "Sign\-out"$/) do |link_name|
  pending
end