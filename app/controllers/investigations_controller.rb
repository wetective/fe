class InvestigationsController < ApplicationController
  def index
    @user_id = params[:user_id]
    @investigations = InvestigationFacade.get_all_investigations
    require 'pry'; binding.pry 
    @investigations.delete(nil)
    require 'pry'; binding.pry 
  end
  
  def show
    @user_id = params[:user_id]
    
    @investigation = InvestigationFacade.get_investigation(params[:id])
  end
end
