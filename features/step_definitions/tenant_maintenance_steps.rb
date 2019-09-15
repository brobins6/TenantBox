#Scenario: Correctly loging in
#  Given I am on the login page
#  When I put in information
#  Then I see the home page

#Given (/^(?:|I ) am on the (.+)$/) do |page_name|
#  visit path_to(page_name)
#end

#When(/^I put in information$/) do
# click_link "New User?" 
# fill_in "Name", :with => "bob"
# fill_in "Email", :with => "bob@bob.com"
# fill_in "Password", :with => "billybobjoe"
# fill_in "Confirmation", :with => "billybobjoe"
# find_button('Create my account').click
#end

#Then(/^I see the home page$/) do
#    expect(page).to have_current_path(home_path)
#end

#Scenario: Testing maintenace page features
#  Given I am on the login page 
#  When I put in information, I am logged in
#  Then I should be on the maintenance page
#  Then I should see Request
#  And I should see Subject
#  And I should see Time of Request
#  And I should see Status
#  And I should see Submit a New Request

Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see request$/) do 
  expect(page).to have_content ("Request")
end

And(/^I should see time of request$/) do 
  expect(page).to have_content("Time Created")
end

And(/^I should see status$/) do 
  expect(page).to have_content("Status")
end

And(/^I should see submit a new request$/) do 
  page.should have_selector(:link_or_button, 'Submit a New Request')
  #expect(page).to have_content("Submit")
end

#Scenario: Testing maintenance features





#Scenario: Testing maintenance request form
#  Given I am on the login page 
#  When I put in information, I am logged in
#  Then I should be on the maintenance page
#  When I press submit a new request
#  Then I should be on the requests page
#  And I should see name
#  And I should see email
#  And I should see option
#  And I should then see subject
#  And I should see submit


Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I put in information, I am logged in$/) do
 click_link "New User?" 
 fill_in "Name", :with => "bob"
 fill_in "Email", :with => "bob@bob.com"
 fill_in "Password", :with => "billybobjoe"
 fill_in "Confirmation", :with => "billybobjoe"
 find_button('Create my account').click
end

Then(/^I should be on the maintenance page/) do 
  visit home_path
  expect(page).to have_current_path(home_path)
  visit tenant_maintenance_path
  expect(page).to have_current_path(tenant_maintenance_path)
end

When(/^I press submit a new request/) do 
   find_button('Submit a New Request').click
  visit requestform_path
  expect(page).to have_current_path(requestform_path)
end

Then(/^I should be on the requests page/) do 
  visit requestform_path
  expect(page).to have_current_path(requestform_path)
end

And (/^I should see name$/) do 
  expect(page).to have_content ("Name")
end

And(/^I should see email$/) do 
  expect(page).to have_content("Email")
end

And(/^I should see option$/) do 
  expect(page).to have_content("Option")
end

And(/^I should then see subject$/) do 
  expect(page).to have_content("Subject")
end

And(/^I should see submit$/) do 
  page.should have_selector(:link_or_button, 'Submit')
  #expect(page).to have_content("Submit")
end

#Scenario: Testing maintenance features



#Scenario: Testing maintence features continued
#  Given I am on the login page 
#  When I put in information, I am logged in
#  When I enter the requests page
#  Then I should see Dishwasher
#  And I should see Disposal
#  And I should see Dryer
#  And I should see Refrigerator
  
Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I enter the maintenace page/) do 
  visit tenant_maintenance_path
  expect(page).to have_current_path(tenant_maintenance_path)
  find_button('Submit a New Request').click
  visit requestform_path
  expect(page).to have_current_path(requestform_path)
end

Then(/^I should see Dishwasher$/) do 
  expect(page).to have_content ("Dishwasher")
end 

And (/^I should see Disposal$/) do 
  expect(page).to have_content ("Disposal")
end 

And (/^I should see Dryer$/) do 
  expect(page).to have_content ("Dryer")
end 

And (/^I should see Refrigerator$/) do 
  expect(page).to have_content ("Refrigerator")
end 

#Scenario: Testing maintence request form continued
#  Given I am on the login page 
#  When I put in information, I am logged in 
#  When I enter the requests page
#  Then I should see Shower
#  And I should see Washer
#  And I should see Water Heater
#  And I should see Other
  
When(/^I put in information$/) do
  expect(page).to have_content ("Information")
end

Then(/^I should see Shower$/) do
  expect(page).to have_content ("Shower")
end

And (/^I should see Washer$/) do
  expect(page).to have_content ("Washer")
end

And (/^I should see Water Heater$/) do
  expect(page).to have_content ("Heater")
end

And (/^I should see Other$/) do
  expect(page).to have_content ("Other")
end