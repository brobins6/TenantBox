# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tenants = [{:tenant => "Bennett",:email => "test@test.com", :rent => "550", :unreadMess => "2", :maintenance=>
      "2", :propLoc => "Colorado Springs"}, {:tenant => "Alex",:email => "alex@test.com", :rent => "330", :unreadMess => "0",
      :maintenance => "3",  :propLoc => "Denver"},
      {:tenant => "Steve",:email => "steve@test.com", :rent => "335", :unreadMess => "1",
      :maintenance => "3",  :propLoc => "Denver"},{:tenant => "test", :email => "test@example.com", :rent => rand(300..1200).to_s, :unreadMess => "0", :maintenance => "1", 
          :propLoc => "Bennett"
      }
      ]
      
tenants.each do |tenant|
    Tenant.create!(tenant)
    end

User.create(:name => 'test', :email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
User.create(:name => 'landlord', :email => 'landlord@admin.com', :password => 'password', :password_confirmation => 'password', :group => 'landlord')

requests = [
{:address => "1234 sender st.", :name => "Alex", :email => "alex@test.com", :option => "Dishwasher",:body => "my dishwasher is broken", :status => "incomplete",:created_at => "4/18/2018 4pm"}, 
{:address => "5260 reciever st.", :name => "Bennett", :email => "test@test.com", :option => "Dryer",:body => "my dryer is broken", :status => "incomplete",:created_at => "4/18/2018 4pm"},
{:address => "1234 sender st.", :name => "Alex", :email => "alex@test.com", :option => "shower",:body => "my shower doesn't have any hot water", :status => "complete",:created_at => "4/21/2017 12pm"},
{:address => "5260 reciever st.", :name => "Bennett", :email => "test@test.com", :option => "sink",:body => "my sink is spewing out brown water", :status => "incomplete",:created_at => "4/12/2018 3pm"},
{:address => "4240 name st.", :name => "Steve", :email => "steve@test.com", :option => "other",:body => "my door is locking me out of my room", :status => "incomplete",:created_at => "4/8/2018 11am"},
{:address => "4240 name st.", :name => "Steve", :email => "steve@test.com", :option => "Dishwasher",:body => "my dishwasher is broken", :status => "complete",:created_at => "4/2/2018 1pm"},
{:address => "1234 sender st.", :name => "Alex", :email => "alex@test.com", :option => "fan",:body => "my fan isn't working", :status => "complete",:created_at => "4/1/2018 8pm"},
{:address => "4240 name st.", :name => "Steve", :email => "steve@test.com", :option => "dryer",:body => "my dryer doesnt dry my clothes", :status => "complete",:created_at => "3/18/2018 3pm"},
{:address => "1337 Halo st.", :name => "test", :email => "test@example.com", :option => "other",:body => "my xbox doesnt work", :status => "incomplete",:created_at => "3/18/2018 1pm"}]

requests.each do |req|
    Request.create!(req)
end
