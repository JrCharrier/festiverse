class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :festival

  validates :user_id, uniqueness: { scope: :festival_id, message: "a déjà enregistré ce festival comme favori" }
end
