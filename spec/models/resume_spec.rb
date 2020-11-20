require 'rails_helper'

RSpec.describe 'Resume', type: :model do
  describe 'validations' do
    it 'should have a title' do
      resume = Resume.new
      resume.valid?
      expect(resume.errors[:title]).to include("can't be blank")

      resume.title = 'UI UX designer'
      resume.valid?
      expect(resume.errors[:title]).to_not include("can't be blank")
    end

    it 'should have a description' do
      resume = Resume.new
      resume.valid?
      expect(resume.errors[:description]).to include("can't be blank")

      resume.description = 'Interested in food, in love with UI and UX design'
      resume.valid?
      expect(resume.errors[:description]).to_not include("can't be blank")
    end
  end
end
