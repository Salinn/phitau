require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^there's a post titled "(.*?)" with "(.*?)" content$/) do |title, content|
  @post = FactoryGirl.create(:post, title: title, content: content)
end
