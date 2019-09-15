require 'rails_helper'
require 'simplecov' 
SimpleCov.start

RSpec.describe MessagesController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(302)
    end
  end
  
  describe "#messages" do
    it "should be defined" do
      expect { 	@message = Message.new }.not_to raise_error
    end
  end

  describe "#create" do
    before do
      @sender = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
      @sender.save
      @receiver = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
      @receiver.save
      @message = Message.new(sender: "tom@test.com", receiver: "sara@test.com", subject: "Test", content: "Hello?", unread: 1)
      @message.save
    end
    
    describe "message" do
      it "puts the message in the users messages" do
        expect(Message.where(sender: @sender.email)).to include(@message)
        expect(Message.where(receiver: @receiver.email)).to include(@message)
      end
    end
    
    

  end
  
end
