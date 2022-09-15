class Location < ApplicationRecord
  validates_presence_of :city, :state, :lat_long

  def self.coordinates
    Location.all.map { |loc| lat_long }
  end

  def self.city_state
    Location.all.map { |loc| [city, state] }
  end
end