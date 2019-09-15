 Feature: Navigating and Checking values
     As a Land Lord
     I want to see money owed, documents, and messages
     Because I want to know the current status
    
 Scenario: Land Lord checks Messages
     Given I am on the login page
     When I put in information, I'm logged in
     Then I am at the dashboard
     And I see unread messages
     When I go to the messages tab
     Then I should see a new message

 Scenario: Land Lord checks Money
   Given I am on the login page
   When I put in information, I'm logged in
   When I am at the dashboard
   Then I should see the amount of money owed
   
   
  #Given I am on the login page
  #When I put in information, I'm logged in