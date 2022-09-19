class InvestigationsController < ApplicationController

  def index
    @investigations = InvestigationFacade.create_investigations
  end

  def show

  end
end
