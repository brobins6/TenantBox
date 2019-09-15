Feature: Tenant can submit maintenance request
As a Tenant
I want to submit maintenance requests to my landlord
Because I want to communicate easily with my landlord

Scenario: Testing maintenace page features
  Given I am on the login page 
  When I put in information, I am logged in
  Then I should be on the maintenance page
  Then I should see request
  And I should see subject
  And I should see time of request
  And I should see status
  And I should see submit a new request
  
Scenario: Testing maintenance request form
  Given I am on the login page 
  When I put in information, I am logged in
  Then I should be on the maintenance page
  When I press submit a new request
  Then I should be on the requests page
  And I should see name
  And I should see email
  And I should see option
  And I should then see subject
  And I should see submit
  
  
Scenario: Testing maintence request form continued
  Given I am on the login page 
  When I put in information, I am logged in
  When I enter the maintenace page
  Then I should see Dishwasher
  And I should see Disposal
  And I should see Dryer
  And I should see Refrigerator
  
Scenario: Testing maintence request form continued
  Given I am on the login page 
  When I put in information, I am logged in 
  When I enter the maintenace page
  Then I should see Shower
  And I should see Washer
  And I should see Water Heater
  And I should see Other

#Scenario: Entering the right information
#  Given I am on the login page 
#  When I put in information, I am logged in 
#  When I enter the requests page
#  Then I fill in the form
#  And Press Submit
  
#Scenario: Entering blank information
#  Given I am on the login page 
#  When I put in information, I am logged in 
#  When I enter the requests page
#  Then I enter blank information
#  And Press Submit
#  And I should still be on maintenance
  