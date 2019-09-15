require 'rails_helper'

RSpec.describe Request, type: :model do
    
    subject { described_class.new(address: "Anything", name: "Anything else", email: "Test@test.com", option: "Electrical", body: "Hello?????", status: "incomplete") }
    
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    
    it "is not valid without a sender" do
        subject.address = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without an email" do
        subject.email = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without an option selected" do
        subject.option = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a body" do
        subject.body = nil
        expect(subject).to_not be_valid
    end
    
end
