class Website < ApplicationRecord
  belongs_to :contact

  validates :url, presence: true
end
