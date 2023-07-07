class Task < ApplicationRecord
  validates :title, presence: true
  validates :start_date, presence: true
  validates :start_end, presence: true
  validates :title, length: {maximum: 20}
  validates :start_end, comparison: { greater_than: :start_date }

end
