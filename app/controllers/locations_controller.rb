class LocationsController < ApplicationController
  def index
    @maps = Locations.all
    @markers = Locations.coordinates
    @locations = @maps.city_state
  end
end