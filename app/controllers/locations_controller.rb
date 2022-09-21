class LocationsController < ApplicationController
  def index
    @locations = Location.all
    if !@locations.empty?
      @location = params[:city]
      @investigations = InvestigationFacade.new.cities_investigations(@location)
      # @pagy, @investigations = pagy(@investigations, items: 15)
    end
  end
end