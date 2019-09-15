require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RequestsHelper. For example:
#
# describe RequestsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe RequestsHelper, type: :helper do
    
    describe "#get_sent" do
        before do
            @sender = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
            @sender.save
            session[:user_id] = @sender.id
            @receiver = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
            @requestSent = Request.new( name: "Tom", address: "1234 s,dnfst.", email: "tom@test.com", option: "dishwasher", body: "Hello?", status: "incomplete")
            @requestSent.save
        end
        
        describe "sent" do
            it "gets the user's sent requests" do
                expect(helper.get_sent).to include(@requestSent)
            end
        end
    end
    
    describe "#get_all" do
        before do
            @receiver = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "landlord")
            @receiver.save
            session[:user_id] = @receiver.id
            @sender = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "tenant")
            @requestReceived = Request.new(name: "Sara", address: "2345 jabber st.", email: "sara@test.com", option: "dishwasher", body: "Hello?", status: "incomplete")
            @requestReceived.save
        end
        
        describe "all" do
            it "gets all user requests" do
                expect(helper.get_all).to include(@requestReceived)
            end
        end
    end
    
    describe "#get_incomplete" do
        before do
            @sender = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
            @sender.save
            session[:user_id] = @sender.id
            @receiver = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
            @incompleteRequest = Request.new(name: "Tom", address: "1234 a,sdj st.", email: "tom@test.com", option: "dishwasher", body: "Hello?", status: "incomplete")
            @incompleteRequest.save
            @completeRequest = Request.new(name: "Tom", address: "1234 sender st.", email: "tom@test.com", option: "dryer", body: "Hello??????????", status: "complete")
            @completeRequest.save
        end
        
        describe "incomplete" do
            it "gets the user's incomplete requests" do
                expect(helper.get_incomplete).to include(@incompleteRequest)
            end
            it "doesn't get the complete requests" do
                expect(helper.get_incomplete).not_to include(@completeRequest)
            end
        end
    end
    
    
    describe "#get_complete" do
        before do
            @sender = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
            @sender.save
            session[:user_id] = @sender.id
            @receiver = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
            @incompleteRequest = Request.new(name: "Tom", address: "1234 sender st.", email: "tom@test.com", option: "dishwasher", body: "Hello?", status: "incomplete")
            @incompleteRequest.save
            @completeRequest = Request.new(name: "Tom", address: "1234 sender st.", email: "tom@test.com", option: "dryer", body: "Hello??????????", status: "complete")
            @completeRequest.save
        end
        
        describe "incomplete" do
            it "gets the user's incomplete requests" do
                expect(helper.get_complete).to include(@completeRequest)
            end
            it "doesn't get the complete requests" do
                expect(helper.get_complete).not_to include(@incompleteRequest)
            end
        end
    end
    
end
