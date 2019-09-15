Feature: Tenant can view profile information
As a Tenant
I want to be able to view my profile information
Because I want to know what my landlord is seeing

Scenario: Testing profile information
  Given I am on the login page 
  When I put in information, I am logged in
  Then I should be on the profile page
  Then I should see name
  And I should see bob
  And I should see email
  And I should see bob@bob.com
  When I press return to dashboard
  Then I should be on the homepage