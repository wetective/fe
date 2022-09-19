class LocationsController < ApplicationController
  def index
    @locations = LocationFacade.new.markers
    if params[:city]
      facade = InvestigationFacade.new
      @location = params[:city]
      @investigations = facade.cities_investigations(@location)
      # @pagy, @investigations = pagy(@investigations, items: 15)
    end
  end
end