require 'rails_helper'

RSpec.describe 'Skill', type: :model do
  describe 'validations' do
    it 'should have a name' do
      skill = Skill.new
      skill.valid?
      expect(skill.errors[:name]).to include("can't be blank")

      skill.name = 'Rails'
      skill.valid?
      expect(skill.errors[:name]).to_not include("can't be blank")
    end

    it 'should have a level' do
      skill = Skill.new
      skill.valid?
      expect(skill.errors[:level]).to include("can't be blank")

      skill.level = 'intermediate'
      skill.valid?
      expect(skill.errors[:level]).to_not include("can't be blank")
    end
  end
end
