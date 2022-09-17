class LocationsController < ApplicationController
  def index
    @locations = LocationFacade.new.markers
  end

  def reveal
    facade = InvestigationFacade.new
    city = params[:format]
    investigations = facade.cities_investigations(city)
    require 'pry'; binding.pry 
    render 'table', locals: { investigations: investigations, city: city }
    # format.turbo_stream { render turbo_stream: turbo_stream.replace("investigations", partial: "investigations/investigations", locals: { investigations: @location })}
  end
end