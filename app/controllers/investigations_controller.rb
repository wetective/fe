class InvestigationsController < ApplicationController

  def index
    @investigations = InvestigationFacade.create_investigations
    @investigations.delete(nil)
  end

  def show

  end
end
