class MapsController < ApplicationController
  def index
    @maps = Map.all
    @markers = Map.coordinates
    @locations = @maps.city_state
  end
end