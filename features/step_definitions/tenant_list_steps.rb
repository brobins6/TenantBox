

Then (/I am on the landlord tenants page$/) do
    page.visit tennantList_path
end


Then (/^I should see tenants in the list$/) do
    page.should have_content(text)
end

And (/I should see their name field populated$/) do
    page.should have_content(text)
end

When(/^I follow "([^"]*)"$/) do |arg1|
        click_link arg1
end

When (/^(?:|I) follow the (.+)$/) do |arg1|
  visit path_to(page_name)
  expect(page).to have_current_path(' /LandLord/TennantList')
end

Then /^I should see "(.*)" before "(.*)"$/ do |arg1, arg2|
    test1 = page.body.index(arg1)
    test2 = page.body.index(arg2)
    if arg2 < arg1 && arg1 && arg2
        fail "didn't appear in correct order"
    end
end



Then (/I should see the highest rent due at the top of the list$/) do
        page.should have_content(text)
end
Then(/^I should see the tenant with highest number of unread Messages first$/) do
        page.should have_content(text)
end

Then(/^I should see the tenant with lowest number of unread Messages last$/) do
        page.should have_content(text)
end