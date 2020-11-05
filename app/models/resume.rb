class Resume < ApplicationRecord
  belongs_to :user
  has_one :contact
  has_many :educations
  has_many :languages
  has_many :portfolios
  has_many :skills
  has_many :working_experiences

  validates :title, presence: true
  validates :description, presence: true
end
