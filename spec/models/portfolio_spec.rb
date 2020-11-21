require 'rails_helper'

RSpec.describe 'Portfolio', type: :model do
  describe 'validations' do
    it 'should have a title' do
      portfolio = Portfolio.new
      portfolio.valid?
      expect(portfolio.errors[:title]).to include("can't be blank")

      portfolio.title = 'My awesome project'
      portfolio.valid?
      expect(portfolio.errors[:title]).to_not include("can't be blank")
    end

    it 'should have a unique url' do
      user = User.create(first_name: 'Gaston', last_name: 'Lagaffe', email: 'gaston@test.com', password: '123465')
      Portfolio.create(title: 'Best website ever', url: 'bestwebsiteever.com', description: 'Everything is in the title', user: user)

      portfolio = Portfolio.new
      portfolio.valid?
      expect(portfolio.errors[:url]).to include("can't be blank")

      portfolio.url = 'bestwebsiteever.com'
      portfolio.valid?
      expect(portfolio.errors[:url]).to include("has already been taken")

      portfolio.url = 'myawesomeproject.com'
      portfolio.valid?
      expect(portfolio.errors[:url]).to_not include(["can't be blank", "has already been taken"])
    end

    it 'should have a description' do
      portfolio = Portfolio.new
      portfolio.valid?
      expect(portfolio.errors[:description]).to include("can't be blank")

      portfolio.description = 'This is the first solo project I have ever completed and it is awesome.'
      portfolio.valid?
      expect(portfolio.errors[:description]).to_not include("can't be blank")
    end
  end
end
