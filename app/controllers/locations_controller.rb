class LocationsController < ApplicationController
  def index
    @locations = LocationFacade.new.markers
    if !@locations.empty?
      @location = params[:city]
      @investigations = InvestigationFacade.new.cities_investigations(@location)
      # @pagy, @investigations = pagy(@investigations, items: 15)
    end
  end
end