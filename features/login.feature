Feature: User can login to the website
    As a User
    I want to be able to login to the website
    Because I want to be able to access all of my information securely

Scenario: Correctly signing up
  Given I am on the login page
  When I press New User?
  Then I should be on the signup page
  And I should be able to fill out information
  
Scenario: Logging out successfully
  Given I am on the home page
  When I press the logout tab
  Then I should be on the login page
  
Scenario: Incorrectly signing up
  Given I am on the login page
  When I push New User?
  Then I should see the signup page
  When I fill in blank information
  Then I should still be on the signup page
  When I fill in a password less than three characters
  Then I should currently be on the signup page
  

Scenario: Incorrectly loging in
  Given I see the login page
  When I fill in a non-existent user's information
  Then I should still be on the login page
  
Scenario: Correctly loging in
  Given I am on the login page
  When I fill in information
  Then I should see the home page
 

  
