require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the MessagesHelper. For example:
#
# describe MessagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe MessagesHelper, type: :helper do
    
    describe "#get_sent" do
        before do
            @sender = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
            @sender.save
            session[:user_id] = @sender.id
            @receiver = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
            @messageSent = Message.new(sender: "tom@test.com", receiver: "sara@test.com", subject: "Test", content: "Hello?", unread: 1)
            @messageSent.save
        end

        describe "logged in" do
            it "user is logged in" do
                expect(session[:user_id]).to eq(@sender.id)
            end
        end	
        
        describe "sent" do
            it "gets the user's sent messages" do
                expect(helper.get_sent).to include(@messageSent)
            end
        end
    end
    
    describe "#get_recieved" do
        before do
            @receiver = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
            @receiver.save
            session[:user_id] = @receiver.id
            @sender = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
            @messageReceived = Message.new(sender: "sara@test.com", receiver: "tom@test.com", subject: "Test Again", content: "Hello????", unread: 1)
            @messageReceived.save
        end
        
        describe "received" do
            it "gets the user's sent messages" do
                expect(helper.get_received).to include(@messageReceived)
            end
        end
    end

    describe "#get_message_by_id" do
        before do
            @message = Message.new(sender: "sara@test.com", receiver: "tom@test.com", subject: "Test Again", content: "Hello????", unread: 1)
            @message.save
        end

        describe "message by id" do
            it "gets the message with a set id" do
                expect(helper.get_message_by_id(@message.id)).to include(@message)
            end
        end
    end

    describe "#get_unread" do
        before do
            @receiver = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
            @receiver.save
            session[:user_id] = @receiver.id
            @message = Message.new(sender: "sara@test.com", receiver: "tom@test.com", subject: "Test Again Again", content: "Chipotle is my life", unread: 1)
            @message.save
        end

        describe "unread" do
            it "gets the user's unread messages" do
                expect(helper.get_unread).to include(@message)
            end
        end
    end
end
