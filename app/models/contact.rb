class Contact < ApplicationRecord
  belongs_to :resume
  has_many :websites

  validates :email, presence: true
end
