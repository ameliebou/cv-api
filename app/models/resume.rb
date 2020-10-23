class Resume < ApplicationRecord
  belongs_to :user
  has_many :portfolios

  validates :title, presence: true
  validates :description, presence: true
end
