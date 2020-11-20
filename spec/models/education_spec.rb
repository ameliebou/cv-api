require 'rails_helper'

RSpec.describe 'Education', type: :model do
  describe 'validations' do
    it 'should have a graduation date' do
      education = Education.new
      education.valid?
      expect(education.errors[:graduation_date]).to include("can't be blank")

      education.graduation_date = 2020
      education.valid?
      expect(education.errors[:graduation_date]).to_not include("can't be blank")
    end

    it 'should have a degree' do
      education = Education.new
      education.valid?
      expect(education.errors[:degree]).to include("can't be blank")

      education.degree = 'Bachelor'
      education.valid?
      expect(education.errors[:degree]).to_not include("can't be blank")
    end

    it 'should have an institute' do
      education = Education.new
      education.valid?
      expect(education.errors[:institute]).to include("can't be blank")

      education.institute = 'University of Oxford'
      education.valid?
      expect(education.errors[:institute]).to_not include("can't be blank")
    end
  end
end
