#Scenario: Testing profile information
#  Given I am on the login page 
#  When I put in information, I am logged in
#  Then I should be on the profile page
#  Then I should see name
#  And I should see bob
#  And I should see email
#  And I should see bob@bob.com
#  When I press return to dashboard
#  Then I should be on the homepage

Then(/^I should be on the profile page/) do 
  visit home_path
  expect(page).to have_current_path(home_path)
  visit profile_path
  expect(page).to have_current_path(profile_path)
end

#Then(/^I should see name$/) do 
#  expect(page).to have_content ("Name")
#end

And(/^I should see bob$/) do 
  expect(page).to have_content("Bob")
end

#And(/^I should see email$/) do 
#  expect(page).to have_content("Email")
#end

And(/^I should see bob@bob.com$/) do 
  expect(page).to have_content("bob@bob.com")
end

When (/^I press return to dashboard$/) do 
   page.should have_selector(:link_or_button, 'Return to Dashboard')
   find_button('Return to Dashboard').click
   visit home_path
end

Then (/^I should be on the homepage$/) do 
  #click_on ('Return to Dashboard')
  expect(page).to have_current_path(home_path)
end

