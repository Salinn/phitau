Feature: Create Post
  In order to make a post
  A user
  Should have the correct permissions
  Should know the title of the post
  Should know the content of the post

  Scenario: Sign In User
    Given I am on the "home page"
    When I go on to the "Sign-in" page
    And I fill in "user_email" with "pmdspam@gmail.com"
    And I fill in "user_password" with "thehobbit1"
    And I click the "Log in" button
    Then I should be redirected back to the "home page"
    And there should be a "Sign-out"