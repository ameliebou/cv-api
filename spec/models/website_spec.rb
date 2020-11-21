require 'rails_helper'

RSpec.describe 'Website', type: :model do
  describe 'validations' do
    it 'should have a url' do
      website = Website.new
      website.valid?
      expect(website.errors[:url]).to include("can't be blank")

      website.url = 'mywebsite.com'
      website.valid?
      expect(website.errors[:url]).to_not include("can't be blank")
    end
  end
end
