require 'rails_helper'

RSpec.describe 'User', type: :model do
  describe 'validations' do
    it 'should have a first name and a last name' do
      user = User.new
      user.valid?
      expect(user.errors[:first_name]).to include("can't be blank")
      expect(user.errors[:last_name]).to include("can't be blank")

      user.first_name = 'Emma'
      user.last_name = 'Smith'
      user.valid?
      expect(user.errors[:first_name]).to_not include("can't be blank")
      expect(user.errors[:last_name]).to_not include("can't be blank")
    end

    it 'should have a unique email address' do
      User.create(first_name: 'Gaston', last_name: 'Lagaffe', email: 'gaston@test.com', password: '123465')
      user = User.new
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")

      user.email = 'gaston@test.com'
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")

      user.email = 'test@test.com'
      user.valid?
      expect(user.errors[:email]).to_not include(["can't be blank", "has already been taken"])
    end
  end
end
