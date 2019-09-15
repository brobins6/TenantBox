#testing to see if the path works
Given(/^(?:|I) am at the (.+)$/) do |path_name|
  visit path_to(path_name)
end


#Checking the messages pages
Then(/^I see unread messages$/) do
    if page.respond_to? :should
        page.should have_content("Unread Messages")
    else
        assert page.has_content?("3")
    end
end

#Going to the messages page
When(/^I go to the messages tab$/) do
    page.visit("/LandLord/Messages")
end


#check to see if a 2 appears
#Then(/^I should see a new message$/) do
#    if page.respond_to? :should
#        page.should have_content("2")
#    else
#        assert page.has_content?("2")
#    end
#end

#check to see if inbox appears
Then(/^I should see a new message$/) do
    if page.respond_to? :should
        page.should have_content("0")
    else
        assert page.has_content?("0")
    end
end

#checking to see the money owed on the homepage
Then(/^I should see the amount of money owed$/) do
    if page.respond_to? :should
        page.should have_content("Total Balance Due")
    else
        assert page.has_content?("0")
    end
end
