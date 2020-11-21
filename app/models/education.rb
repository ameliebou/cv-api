class Education < ApplicationRecord
  belongs_to :resume

  validates :graduation_date, presence: true
  validates :degree, presence: true
  validates :institute, presence: true
end
