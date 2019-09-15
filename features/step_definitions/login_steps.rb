#Scenario: Correctly signing up
#  Given I am on the login page
#  When I press New User?
#  Then I should be on the signup page
#  And I should be able to fill out information


#Given (/^(?:|I ) am on the (.+)$/) do |page_name|
#  visit path_to(page_name)
#end

Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I press New User\?$/) do
 click_link "New User?"
end

Then(/^I should be on the signup page$/) do
  expect(page).to have_current_path(signup_path)
end

And (/^I should be able to fill out information$/) do
 fill_in "Name", :with => "bob"
 fill_in "Email", :with => "bob@billybob.com"
 fill_in "Password", :with => "billybobjoe"
 fill_in "Confirmation", :with => "billybobjoe"
 find_button('Create my account').click
 expect(page).to have_current_path(home_path)
end

#Scenario: Logging out successfully
#  Given I am on the home page
#  When I press the logout tab
#  Then I should be on the login page

Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When (/^(?:|I) press the (.+)$/) do |page_name|
  visit('/home')
  #Capybara.page.find('i.fa.fa-sign-out').click
  visit path_to(page_name)
end

Then (/^(?:|I) should be on the login page$/) do
 expect(page).to have_current_path(root_path)
end


#Scenario: Incorrectly signing up
#  Given I am on the login page
#  When I push New User?
#  Then I should see the signup page
#  When I fill in blank information
#  Then I should still be on the signup page
#  When I fill in a password less than three characters
#  Then I should currently be on the signup page


Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I push New User\?$/) do
 click_link "New User?"
end

Then(/^I should see the signup page$/) do
  expect(page).to have_current_path(signup_path)
end

When (/^I fill in blank information$/) do
 fill_in "Name", :with => "bob"
 fill_in "Email", :with => "bob@bob.com"
 fill_in "Password", :with => ""
 fill_in "Confirmation", :with => ""
 find_button('Create my account').click
end

Then(/^I should still be on the signup page$/) do
  expect(page).to have_current_path(signup_path)
end

When (/^I fill in a password less than three characters$/) do
 fill_in "Name", :with => "test1"
 fill_in "Email", :with => "test1@example.com"
 fill_in "Password", :with => "bo"
 fill_in "Confirmation", :with => "bo"
 find_button('Create my account').click
end

Then(/^I should currently be on the signup page$/) do
  expect(page).to have_current_path(signup_path)
end

#Scenario: Incorrectly loging in
#  Given I see the login page
#  When I fill in a non-existent user's information
#  Then I should still be on the login page

Given (/^I see the login page$/) do 
  visit root_path
end

When(/^I fill in a non-existent user's information$/) do
 #visit root_path
 fill_in "Email", :with => "bob@example.com"
 fill_in "Password", :with => "password"
 find_button('Login')
 #click_on "Submit"
end

Then(/^I should still be on the login page$/) do
    expect(page).to have_current_path(root_path)
end


#Scenario: Correctly loging in
#  Given I am on the login page
#  When I fill in information
#  Then I should see the home page

Given (/^(?:|I ) am on the (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I fill in information$/) do
 click_link "New User?" 
 fill_in "Name", :with => "bob"
 fill_in "Email", :with => "bob@bob.com"
 fill_in "Password", :with => "billybobjoe"
 fill_in "Confirmation", :with => "billybobjoe"
 find_button('Create my account').click
end

Then(/^I should see the home page$/) do
    expect(page).to have_current_path(home_path)
end


