class Contact < ApplicationRecord
  belongs_to :resume
  has_many :websites
end
