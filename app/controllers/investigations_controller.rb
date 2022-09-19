class InvestigationsController < ApplicationController

  def index
    @investigations = InvestigationFacade.create_investigations
  end
  
  def show
    binding.pry
    @investigations = InvestigationFacade.create_investigation(params[:id])
  end
end
