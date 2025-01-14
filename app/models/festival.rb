class Festival < ApplicationRecord
  has_many :users, through: :favorites
  has_many :users, through: :my_festivals
  has_many_attached :images

  validates :name, :genres, :description, :image_url, :line_up, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }

  include PgSearch::Model
  pg_search_scope :search_by_name_genre_start_date_line_up_and_address, against: [ :name, :genres, :address, :start_date, :line_up ], using: {
    tsearch: { prefix: true }
  }

  def self.genres
    ["rock", "rap", "electro", "pop", "jazz", "techno", "house", "reggae", "métal", "punk", "reggaeton", "variété"]
  end
end
