require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Then(/^I should be on the "([^"]*)"$/) do |page_name|
  puts path_to(page_name)
  puts current_path
  @current_user = cookies[:token] && User.find_by_token(cookies[:token])
  puts @current_user.email
end