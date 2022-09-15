class Map < ApplicationRecord
  validates_presence_of :city, :state, :lat, :long

  def self.coordinates
    Map.all.map { |m| [lat, long] }
  end

  def city_state
    [city, state]
  end
end