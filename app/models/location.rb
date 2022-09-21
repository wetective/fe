class Location < ApplicationRecord
  validates_presence_of :city, :lat, :lng, :address, :url
  
  def coordinates
    [lat, lng]
  end
end
