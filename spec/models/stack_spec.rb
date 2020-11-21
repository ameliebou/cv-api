require 'rails_helper'

RSpec.describe 'Stack', type: :model do
  describe 'validations' do
    it 'should have a name' do
      stack = Stack.new
      stack.valid?
      expect(stack.errors[:name]).to include("can't be blank")

      stack.name = 'Rails'
      stack.valid?
      expect(stack.errors[:name]).to_not include("can't be blank")
    end
  end
end
