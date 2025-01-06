class FestivalFeed < ApplicationRecord
  belongs_to :user
  belongs_to :festival
end
