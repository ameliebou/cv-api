require 'rails_helper'

RSpec.describe Api::V1::ResumesController, type: :controller do
  before do
    emma = User.create(first_name: 'Emma', last_name: 'Smith', email: 'emma@test.com', password: '123456')
  end

  describe "#create" do
    it "creates a new resume" do
      user = User.first
      resumes = Resume.count
      post :create, params: {
        "resume": {
          "title":"Architect",
          "description":"Bauhaus is my life <3"
         },
         "user_email": user.email,
         "user_token": user.authentication_token
        }, xhr: true
      expect(Resume.count).to eq(resumes + 1)
    end
  end
end
