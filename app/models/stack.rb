class Stack < ApplicationRecord
  belongs_to :portfolio

  validates :name, presence: true
end
