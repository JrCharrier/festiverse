class Festival < ApplicationRecord
  has_many :users, through: :favorites
  has_many :users, through: :my_festivals

  validates :name, :genre, :description, :image_url, :line_up, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
end
