Feature: Tenant can submit messages
As a Tenant
I want to submit messages to my landlord
Because I want to communicate easily with my landlord

Scenario: Testing main Messages features
  Given I am on the login page
  When I put in information, I'm logged in
  Then I am on the messages page
  When I go to the messages page
  Then I should see inbox
  And I should see new message
  And I should see sent
  And I should see drafts
  And I should see trash
  
Scenario: Testing New Message Box
  Given I am on the login page
  When I put in information, I'm logged in
  Then I am on the messages page
  When I press New Message
  Then I should see Send Mail
  And I should see to
  And I should see subject
  And I should see content
  And I should see send
 
#Scenario: Sending a Message
#  Given I am on the login page
#  When I put in information, I'm logged in
#  Given I am on the messages page
#  When I press New Message
#  Then  I fill in the form
#  And  I press “Send” 
#  And I should see message has been sent
  
#Scenario: Replying to a Message
#  Given I am on the “Messages” tab
#  When I press “Reply” to a specific message
#  And  I type my message
#  And  I press “Send” 
#  Then I should be responding to a message


#Scenario: Typing in Wrong information
#  Given I am on the “Messages” tab
#  When I press “Send a Message”
#  And  I type an email address
#  And the email does not exist
#  And  I press “Send” 
#  Then I the message should not send
