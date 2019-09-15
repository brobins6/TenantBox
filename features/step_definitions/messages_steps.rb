#Scenario: Testing main Messages features
#  Given I am on the login page
#  When I put in information, I'm logged in
#  Then I am on the messages page
#  When I go to the messages page
#  Then I should see inbox
#  And I should see new message
#  And I should see sent
#  And I should see drafts
#  And I should see trash
  
Then (/^(?:|I) am on the (.+)$/) do |path_name|
   visit path_to(path_name)
end

When (/^(?:|I) go to the (.+)$/) do |page_name|
 visit path_to(page_name)
end

Then(/^I should see inbox$/) do 
  expect(page).to have_content ("Inbox")
end

And(/^I should see new message$/) do 
  expect(page).to have_content("New Message")
end

And(/^I should see sent$/) do 
  expect(page).to have_content("Sent")
end

And(/^I should see drafts$/) do 
  expect(page).to have_content("Drafts")
end

And(/^I should see trash$/) do 
  expect(page).to have_content("Trash")
end

#Scenario: Testing New Message Box
#  Given: I am on the messages page
#  When I press New Message
#  Then I should see Send Mail
#  And I should see to
#  And I should see from
#  And I should see subject
#  And I should see content
#  And I should see send

#Given (/^(?:|I) am on the (.+)$/) do |path_name|
#   visit path_to(path_name)
#end

When (/^(?:|I) press New Message$/) do
  visit ("/messages")
   find(:id, "id01").click()
end

Then(/^I should see Send Mail$/) do 
  expect(page).to have_content ("Send Mail")
end

And(/^I should see to$/) do 
  expect(page).to have_content("To")
end

And(/^I should see from$/) do 
  expect(page).to have_content("From")
end

And(/^I should see subject$/) do 
  expect(page).to have_content("Subject")
end

And(/^I should see content$/) do 
  expect(page).to have_content("Content")
end

And(/^I should see send$/) do 
  expect(page).to have_content("Send")
end

#Scenario: Sending a Message
#  Given I am on the login page
#  When I put in information, I'm logged in
#  Given I am on the messages page
#  When I press New Message
#  Then  I fill in the form
#  And  I press “Send” 
#  And I should see message has been sent


#=Interacting with forms=
#    fill_in('First Name', :with => 'John')
#    fill_in('Password', :with => 'Seekrit')
#    fill_in('Description', :with => 'Really Long Text…')
#    choose('A Radio Button')
#    check('A Checkbox')
#    uncheck('A Checkbox')
#    attach_file('Image', '/path/to/image.jpg')
#    select('Option', :from => 'Select Box')


#Then(/^I fill in the form$/) do 
#  fill_in('To', :with => 'test@example.com')
#  fill_in('From', :with => 'bob@bob.com')
#  fill_in('Subject', :with => 'Test')
#  fill_in('Content', :with => 'Content test')
#  find('Send').click
#end
