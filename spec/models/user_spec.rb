require 'rails_helper'

RSpec.describe User, type: :model do
    
    subject { described_class.new(name: "Tom", email: "tome@test.com", password: "Password123", group: "tenant") }
    
    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end
    
    it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without an email" do
        subject.email = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without an email with a minimum of 4 characters" do
        subject.email = "ema"
        expect(subject).to_not be_valid
    end
    
    it "is not valid without an email using correct form" do
        subject.email = "email.com"
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a password" do
        subject.password = nil
        expect(subject).to_not be_valid
    end
    
    it "is not valid without a password length of at least 6 characters" do
        subject.password = "pass"
        expect(subject).to_not be_valid
    end
    
end