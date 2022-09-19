class LocationsController < ApplicationController
  before_action :set_location

  def index
    @locations = LocationFacade.new.markers
    if params[:city]
      facade = InvestigationFacade.new
      @location = params[:city]
      @investigations = facade.cities_investigations(@location)
    end
  end

  def results
    facade = InvestigationFacade.new
    @investigations = facade.cities_investigations(@city)
    respond_to do |format|
      format.html { redirect_to locations_path }
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("results", partial: "locations/results", locals: { investigations: @investigations, city: @city })
      end
      # format.html
    end
    # render partial: 'locations/results', locals: { investigations: @investigations, city: @city }
    # respond_to do |format|
    #   format.turbo_stream { 
    #     render turbo_stream: turbo_stream.replace("investigations", partial: "locations/table", locals: { investigations: investigations, city: city })
    #     }
    # end
  end

  private
    def set_location
      @city = params[:filter] || nil
    end
end