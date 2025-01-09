class MyFestival < ApplicationRecord
  belongs_to :user
  belongs_to :festival

  scope :upcoming, -> { joins(:festival).where("festivals.start_date > ?", Date.today) }
  scope :current, -> { joins(:festival).where("festivals.start_date <= ? AND festivals.end_date >= ?", Date.today, Date.today) }
  scope :past, -> { joins(:festival).where("festivals.end_date < ?", Date.today) }
end
