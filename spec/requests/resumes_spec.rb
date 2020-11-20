require 'rails_helper'

RSpec.describe "Resumes requests", type: :request do
  before do
    emma = User.create(first_name: 'Emma', last_name: 'Smith', email: 'emma@test.com', password: '123456')
    adam = User.create(first_name: 'Adam', last_name: 'Dupont', email: 'adam@test.com', password: '123456')
    Resume.create(title: 'Full stack dev', description: 'Awesome full stack dev, passionate about Rails and React', user: emma)
    Resume.create(title: 'Chef', description: 'Focused on fusion food, but loves a good cassoulet', user: adam)
  end

  describe "GET /api/v1/resumes" do
    before do
      get '/api/v1/resumes'
    end

    it "has a 200 status" do
      expect(response).to have_http_status(200)
    end

    it "displays all resumes" do
      expect(JSON.parse(response.body).length).to eq(2)
    end
  end
end
