class Task < ApplicationRecord
  validates :start_date, presence: true
  validates :start_end, presence: true
  validates :title, presence: true
  validates :title, length: {maximum: 20}
  validate :start_end_check

  def start_end_check
    if start_date > start_end
      errors.add(:start_end, "は開始日より前には設定できない")
    end
  end
end
