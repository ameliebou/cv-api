require 'rails_helper'

RSpec.describe 'WorkingExperience', type: :model do
  describe 'validations' do
    it 'should have a start date' do
      working_experience = WorkingExperience.new
      working_experience.valid?
      expect(working_experience.errors[:start_date]).to include("can't be blank")

      working_experience.start_date = Date.new(2018,12,01)
      working_experience.valid?
      expect(working_experience.errors[:start_date]).to_not include("can't be blank")
    end

    it 'should have a title' do
      working_experience = WorkingExperience.new
      working_experience.valid?
      expect(working_experience.errors[:title]).to include("can't be blank")

      working_experience.title = 'Cook'
      working_experience.valid?
      expect(working_experience.errors[:title]).to_not include("can't be blank")
    end

    it 'should have a company' do
      working_experience = WorkingExperience.new
      working_experience.valid?
      expect(working_experience.errors[:company]).to include("can't be blank")

      working_experience.company = 'Smile Kitchen'
      working_experience.valid?
      expect(working_experience.errors[:company]).to_not include("can't be blank")
    end
  end
end
