require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Then(/^I should see the "(.*?)" post$/) do |title|
  @post = Post.find_by_title(title)

  page.should have_content(@post.title)
  page.should have_content(@post.content)
end