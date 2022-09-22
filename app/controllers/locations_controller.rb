class LocationsController < ApplicationController
  def index
    @locations = Location.all
    @location = params[:city] || nil
    if @location != nil
      facade = InvestigationFacade.new
      @investigations = InvestigationFacade.new.cities_investigations(@location)
      # @pagy, @investigations = pagy(@investigations, items: 15)
    end
  end
end