Feature: Create Post
  In order to make a post
  A user
  Should have the correct permissions
  Should know the title of the post
  Should know the content of the post

  Scenario: Sign In User
    Given I am on the "home page"
    When I go on to the "Sign-in" page
    And I sign in
    Then I should be on the "home page"