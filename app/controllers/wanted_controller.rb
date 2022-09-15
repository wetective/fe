class WantedController < ApplicationController

  def index
    @wanted_persons = WantedFacade.create_wanted_list
  end

  def show
    
  end
end
