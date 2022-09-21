class LocationsController < ApplicationController
  def index
    @locations = Location.all
    if params[:city]
      facade = InvestigationFacade.new
      @location = params[:city]
      @investigations = InvestigationFacade.new.cities_investigations(@location)
      # @pagy, @investigations = pagy(@investigations, items: 15)
    end
  end

  def show
    @location = Location.find(params[:id])
  end
end