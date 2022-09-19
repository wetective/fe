class InvestigationsController < ApplicationController

  def index
    @investigations = InvestigationFacade.create_investigations
    @investigations.delete(nil)
    # binding.pry
  end

  def show

  end
end
