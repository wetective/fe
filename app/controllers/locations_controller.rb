class LocationsController < ApplicationController
  def index
    @locations = LocationFacade.new.markers
  end

  def show
    facade = InvestigationFacade.new
    city = params[:data_id]
    investigations = facade.cities_investigations(city)
    render 'locations/table', locals: { investigations: investigations, city: city }
    # format.turbo_stream { render turbo_stream: turbo_stream.replace("investigations", partial: "investigations/investigations", locals: { investigations: @location })}
  end
end