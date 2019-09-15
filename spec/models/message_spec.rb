require 'rails_helper'

RSpec.describe Message, type: :model do
    subject { described_class.new(sender: "Anything", receiver: "Anything else", subject: "Test", content: "Hello?") }
    
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    
    it "is not valid without a sender" do
        subject.sender = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a receiver" do
        subject.receiver = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a subject" do
        subject.subject = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a content" do
        subject.content = nil
        expect(subject).to_not be_valid
    end
    
end
