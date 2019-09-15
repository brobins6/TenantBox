#Livi's Cucumber code

Feature: Tenant can go to homepage from any page
    As a Tenant
    I want to view all of my current information
    Because I want to be able to easily access the dashboard from  any page

Scenario: Viewing the correct dashboard page
  Given I am on the login page
  When I put in information, I'm logged in
  Then I go to the home page
  And I should see messages
  # And I should see documents
  And I should see payments
  And I should see maintenance
  And I should not see pay rent
  And I should not see name

Scenario: Clicking on the correct tabs
  Given I am on the login page
  When I put in information, I'm logged in
  Then I go to the home page
  When I click on the messages tab
  Then I should be on the messages tab
  And No email page exists
  # When I press on the documents tab
  # Then I should be on the documents tab
  When I push on the maintenance requests tab
  Then I should be on the maintenance requests tab

Scenario: Clicking on the correct tabs continued
  Given I am on the login page
  When I put in information, I'm logged in
  Then I go to the home page
  When I tap on the profile tab
  Then I should be on the profile tab
  When I nudge on the settings tab
  Then I should be on the settings tab
  When I prod the payments tab
  Then I should be on the payments tab