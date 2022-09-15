class LocationsController < ApplicationController
  def index
    @maps = Location.all
    @markers = Location.coordinates
    @locations = @maps.city_state
  end
end