require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SessionsHelper. For example:
#
# describe SessionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SessionsHelper, type: :helper do
  
   describe "#log_in" do
        before do
            @user = User.new(name: "Tom", email: "tom@test.com", password: "Password123", password_confirmation: "Password123", group: "tenant", id: 33)
            helper.log_in(@user)
        end
        
        describe "login user" do
            it "starts a session using user id" do
                expect(session.values).to eq([@user.id])
            end
        end
    end
    
    describe "#current_user" do
        before do
            @user = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant", id: 33)
            @user.save
            helper.log_in(@user)
        end
        
        describe "current user" do
            it "uses the correct user" do
                expect(helper.current_user.id).to eq(@user.id)
            end
        end
    end
    
    describe "#logged_in?" do
        before do
            @user = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant", id: 33)
            @user.save
        end
        
        describe "logged in?" do
            it "the user should be logged in" do
                helper.log_in(@user)
                expect(helper.logged_in?).to eq(true)
            end
            it "the user should not be logged in" do
                expect(helper.logged_in?).to eq(false)
            end
        end
    end
    
    describe "#log_out" do
        before do
            @user = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant", id: 33)
            @user.save
            helper.log_in(@user)
        end
        
        describe "log out" do
            it "the user should not be logged out" do
                expect(helper.current_user).to_not eq(nil)
            end
            it "the user should be logged out" do
                helper.log_out
                expect(helper.current_user).to eq(nil)
            end
        end
    end

end
