class LocationsController < ApplicationController
  def index
    @locations = LocationFacade.new.markers
  end
end