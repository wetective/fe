class Location < ApplicationRecord
  validates_presence_of :city, :state, :lat_long

  def self.coordinates
    Map.all.map { |m| lat_long }
  end

  def city_state
    [city, state]
  end
end