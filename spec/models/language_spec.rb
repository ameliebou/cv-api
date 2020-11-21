require 'rails_helper'

RSpec.describe 'Language', type: :model do
  describe 'validations' do
    it 'should have a name' do
      language = Language.new
      language.valid?
      expect(language.errors[:name]).to include("can't be blank")

      language.name = "french"
      language.valid?
      expect(language.errors[:name]).to_not include("can't be blank")
    end

    it 'should have a level' do
      language = Language.new
      language.valid?
      expect(language.errors[:level]).to include("can't be blank")

      language.level = "mother tongue"
      language.valid?
      expect(language.errors[:level]).to_not include("can't be blank")
    end
  end
end
