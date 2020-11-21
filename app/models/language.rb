class Language < ApplicationRecord
  belongs_to :resume

  validates :name, presence: true
  validates :level, presence: true
end
