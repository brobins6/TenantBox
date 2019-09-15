require 'simplecov' 
SimpleCov.start

Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I put in information, I'm logged in$/) do
 click_link "New User?" 
 fill_in "Name", :with => "bob"
 fill_in "Email", :with => "bob@bob.com"
 fill_in "Password", :with => "billybobjoe"
 fill_in "Confirmation", :with => "billybobjoe"
 find_button('Create my account').click
end

# Add a declarative step here for populating the DB with movies.
#Scenario: Viewing the correct dashboard page
#  Given I am on the login page
#  When I put in information
#  Then I go to the home page
#  And I should see messages
#  And I should see documents
#  And I should see payments
#  And I should see maintenance
#  And I should not see pay rent
#  And I should not see name

Then (/^(?:|I ) go to the (.+)$/) do |page_name|
 visit path_to(page_name)
end

And(/^I should see messages$/) do 
  expect(page).to have_content ("Messages")
end

# And(/^I should see documents$/) do 
#   expect(page).to have_content("Documents")
# end

And(/^I should see payments$/) do 
  expect(page).to have_content("Payments")
end

And(/^I should see maintenance$/) do 
  expect(page).to have_content("Maintenance")
end

And (/^I should not see pay rent$/) do 
  expect(page).to have_no_content("pay rent")
end

And (/^I should not see name$/) do
  expect(page).to have_no_content("name")
end


#Scenario: Clicking on the correct tabs
#  Given I am on the login page
#  When I put in information, I'm logged in
#  Then I go to the home page
#  When I click on the messages tab
#  Then I should be on the messages tab
#  And No email page exists
#  When I click on the documents tab
#  Then I should be on the documents tab
#  When I click on the maintenance requests tab
#  Then I should be on the maintenance requests tab

When (/^(?:|I) click on the (.+)$/) do |page_name|
  visit('/home')
  expect(page).to have_css('i.fa.fa-envelope')
  find(:css, 'i.fa.fa-envelope').click
  visit path_to(page_name)
end

Then (/^(?:|I) should be on the messages tab$/) do 
 expect(page).to have_current_path(messages_path)
end

And (/^No email page exists$/) do
  expect(page).to have_no_content("email")
end

# When (/^(?:|I) press on the (.+)$/) do |page_name|
#   visit('/home')
#   expect(page).to have_css('i.fa.fa-file')
#   find(:css, 'i.fa.fa-file').click
#   visit path_to(page_name)
# end

# Then (/^(?:|I) should be on the documents tab$/) do
#  expect(page).to have_current_path(documents_path)
# end

When (/^(?:|I) push on the (.+)$/) do |page_name|
  visit('/home')
  expect(page).to have_css('i.fa.fa-male')
  first(:css, 'i.fa.fa-male').click
    visit path_to(page_name)
end

Then (/^(?:|I) should be on the maintenance requests tab$/) do
 expect(page).to have_current_path(tenant_maintenance_path)
end

#Scenario: Clicking on the correct tabs continued
#  Given I am on the login page
#  When I put in information, I'm logged in
#  Then I go to the home page
#  When I click on the profile tab
#  Then I should be on the profile tab
#  When I nudge on the settings tab
#  Then I should be on the settings tab
#  When I click on the payments tab
#  Then I should be on the payments tab



When (/^(?:|I) tap on the (.+)$/) do |page_name|
  visit('/home')
  expect(page).to have_css('i.fa.fa-user')
  find(:css, 'i.fa.fa-user').click
  visit path_to(page_name)
end

Then (/^(?:|I) should be on the profile tab$/) do
 expect(page).to have_current_path(profile_path)
end

When (/^(?:|I) nudge on the (.+)$/) do |page_name|
  visit('/home')
  expect(page).to have_css('i.fa.fa-cog')
  find(:css, 'i.fa.fa-cog').click
  visit path_to(page_name)
end

Then (/^(?:|I) should be on the settings tab$/) do
 expect(page).to have_current_path(settings_path)
end

When (/^(?:|I) prod the (.+)$/) do |page_name|
  visit('/home')
  expect(page).to have_css('i.fa.fa-credit-card')
  visit path_to(page_name)
end

Then (/^(?:|I) should be on the payments tab$/) do
 expect(page).to have_current_path(pay_rent_path)
end
