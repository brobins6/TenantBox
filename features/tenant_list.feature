Feature: Organize Tenants
As a landlord
So that I can stay organized and best assist my tenants
I want to have a structred table with all of the tenants and their individual data

Scenario: see tenants in a list
  Given I am on the login page
  When I put in information, I'm logged in
  Then I am on the landlord tenants page
  Then I should see tenants in the list
  And I should see their name field populated

Scenario: sort all Tenants 
  Given I am on the login page
  When I put in information, I'm logged in
  Then I am on the landlord tenants page
  When I follow "Tenant"
  Then I should see "Alex" before "Bennett"

Scenario: sort all by unread messages
  Given I am on the login page
  When I put in information, I'm logged in
  Then I am on the landlord tenants page
  When I follow "Unread Messages"
  Then I should see the tenant with highest number of unread Messages first
  Then I should see the tenant with lowest number of unread Messages last

Scenario: sort highest rent due
  Given I am on the login page
  When I put in information, I'm logged in
  Then I am on the landlord tenants page
  When I follow "Rent"
  Then I should see the highest rent due at the top of the list

