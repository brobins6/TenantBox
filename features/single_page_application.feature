# #Abbas's Cucumber Code

#Feature: Tenant can submit documents
 #As a Tenant
 #I want to submit documents to my landlord
 #Because I want to communicate easily with my landlord
 
#Livi's Cucumber code

# Feature: Tenant can submit messages
# As a Tenant
# I want to submit messages to my landlord
# Because I want to communicate easily with my landlord


# Feature: Tenant can view my profile
# As a Tenant
# I want to view my profile 
# Because I want to check my current status and address

#Feature: Tenant can change settings
# As a Tenant
# I want to change or view settings
# Because I want to change the layout of my web pages

# Feature: Tenant can go to homepage from any page
# As a Tenant
# I want to view all of my current information
# Because I want to know how much I owe, how many messages I have, how many maintenance requests I have and how many documents I have

# #Abbas's Cucumber Code

# Feature: Tenant can submit documents
# As a Tenant
# I want to submit documents to my landlord
# Because I want to communicate easily with my landlord

# Feature: Tenant can pay rent
# As a Tenant
# I want to make a payment 
# Because I want to pay my rent quick and easy

# Feature: Tenant can request maintenance
# As a Tenant
# I want to request maintenance
# Because I want to request maintenance quickly

#Livi's Cucumber Code

# Scenario: Testing main Messages features
#   Given I am on the “Messages” tab
#   When I select “Unread Messages” 
#   Then I should see all unread messages
#   When I select “Read Messages” 
#   Then I should see all read messages
#   When I select a message
#   Then I should be reading that message
#   When I press “Sent Messages”
#   Then I should be seeing messages I have sent
  
# Scenario: Sending a Message
#   Given I am on the “Messages” tab
#   When I press “Send a Message”
#   And  I type my name
#   And  I type my email address
#   And  I type my message
#   And  I press “Send” 
#   Then I should be sending a message to my landlord
  
# Scenario: Replying to a Message
#   Given I am on the “Messages” tab
#   When I press “Reply” to a specific message
#   And  I type my message
#   And  I press “Send” 
#   Then I should be responding to a message

# Scenario: Viewing my Profile Page
#   Given I am on the “Profile” tab
#   When I am viewing my profile
#   Then I should see my picture, name, email and address

# Scenario: Changing my profile picture
#   Given I am on the “Settings” tab
#   When I press “Change Profile Picture”
#   And  I select an image
#   And  I press “Attach” 
#   Then I should be able to change my profile 
  
# Scenario: Changing or adding my credit card information
#   Given I am on the “Settings” tab
#   When I press “Add Credit Card Information”
#   And  I add my card information
#   And  I press “Save” 
#   Then I should be able to view all current credit cards
#   When I press “Change Credit Card Information”
#   And  I delete a credit card
#   And  I press “Save” 
#   Then I should be able to view all current credit cards
  
# Scenario: Changing my password
#   Given I am on the “Settings” tab
#   When I press “Change Password”
#   And  I verify my current password
#   And  I enter my new password
#   And  I verify my password
#   And  I press “Save” 
#   Then I should have a new password
  
# Scenario: Changing my email
#   Given I am on the “Settings” tab
#   When I press “Change Email”
#   And  I verify my current
#   And  I enter my new email
#   And  I verify my new email
#   And  I press “Save” 
#   Then I should be able to have changed my email

# Scenario: Going back to the Dashboard from Payment tab
#   Given I am on Tenant Dashboard
#   When I follow “Payment” tab
#   Then I should be on Payment page
#   When I follow the “Dashboard” tab
#   Then I should be back on the Dashboard page

# Scenario: Going back to the Dashboard from Messages tab
#   Given I am on Tenant Dashboard  
#   When I follow “Messages” tab
#   Then I should be on Messages page
#   When I follow the “Dashboard” tab
#   Then I should be back on the Dashboard page

# Scenario: Going back to the Dashboard from Documents tab
#   Given I am on Tenant Dashboard   
#   When I follow “Documents” tab
#   Then I should be on Documents page
#   When I follow the “Dashboard” tab
#   Then I should be back on the Dashboard page
  
# Scenario: Going back to the Dashboard from Profile tab
#   Given I am on Tenant Dashboard 
#   When I follow “Profile” tab
#   Then I should be on Profile page
#   When I follow the “Dashboard” tab
#   Then I should be back on the Dashboard page
  
# Scenario: Going back to the Dashboard from Settings tab
#   Given I am on Tenant Dashboard 
#   When I follow “Settings” tab
#   Then I should be on Settings page
#   When I follow the “Dashboard” tab
#   Then I should be back on the Dashboard page

# Scenario: Going back to the Dashboard from Maintenance Requests tab
#   Given I am on Tenant Dashboard 
#   When I follow “Maintenance Requests” tab
#   Then I should be on Maintenance Requests page
#   When I follow the “Dashboard” tab
#   Then I should be back on the Dashboard page

#Abbas's Cucumber Code

# Given I am on Tenant dashboard 
# When I follow “Documents” tap
# Then I should be on documents page
# When I select “Document type” with “Lease”
# And I attach a file
# And I write a comment on “comment”
# And I press “submit”
# Then I should see “Lease”

# Given I am on Tenant dashboard
# When I follow “Maintenance” tap
# Then I should be on Maintenance page
# When I fill “where” with “description of the problem”
# And I write details on “Details”
# And I press “submit”
# Then I should see “Maintenance Request”

# Given I am on Tenant dashboard
# When I follow “Payment” tap
# Then I should be on Payment page
# When I press “Pay”
# Then I should see “Balance” equal to zero

