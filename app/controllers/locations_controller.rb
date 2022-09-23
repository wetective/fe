class LocationsController < ApplicationController
  def index
    @locations = Location.all
    if params[:city]
      @location = params[:city]
      @investigations = InvestigationFacade.cities_investigations(@location)
      # @pagy, @investigations = pagy(@investigations, items: 15)
    end
  end
end