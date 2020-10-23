class Portfolio < ApplicationRecord
  belongs_to :resume

  validates :title, presence: true
  validates :url, presence: true, uniqueness: true
  validates :description, presence: true
end
