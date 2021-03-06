class Portfolio < ApplicationRecord
  belongs_to :resume
  has_one :user, through: :resume
  has_many :stacks

  validates :title, presence: true
  validates :url, presence: true, uniqueness: true
  validates :description, presence: true
end
