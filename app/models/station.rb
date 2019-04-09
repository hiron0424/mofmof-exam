class Station < ApplicationRecord
  validates :line_name, presence: true
  validates :station_name, presence: true
  validates :walk_minutes, presence: true

  belongs_to :property, inverse_of: :stations
end
