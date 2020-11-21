class WorkingExperience < ApplicationRecord
  belongs_to :resume

  validates :start_date, presence: true
  validates :title, presence: true
  validates :company, presence: true
end
