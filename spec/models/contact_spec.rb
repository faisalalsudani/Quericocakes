require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe "Validations" do

    it "enter with the name" do
      contact = Contact.new()
      contact.valid?
      expect(contact.errors).to have_key(:name)
    end

    it "enter with the email" do
      contact = Contact.new()
      contact.valid?
      expect(contact.errors).to have_key(:email)
    end

    it "enter with the phone" do
      contact = Contact.new()
      contact.valid?
      expect(contact.errors).to have_key(:phone)
    end

    it "enter with the message" do
      contact = Contact.new()
      contact.valid?
      expect(contact.errors).to have_key(:message)
    end
  end
end
