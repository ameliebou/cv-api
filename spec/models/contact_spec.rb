require 'rails_helper'

RSpec.describe 'Contact', type: :model do
  describe 'validations' do
    it 'should have an email' do
      contact = Contact.new
      contact.valid?
      expect(contact.errors[:email]).to include("can't be blank")

      contact.email = 'test@test.com'
      contact.valid?
      expect(contact.errors[:email]).to_not include("can't be blank")
    end
  end
end
