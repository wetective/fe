class InvestigationsController < ApplicationController
  before_action :set_user_id

  def index
    @user_id = params[:user_id]
    @investigations = InvestigationFacade.get_all_investigations
    @investigations.delete(nil)
  end
  
  def show    
    @investigation = InvestigationFacade.get_investigation(params[:id])
  end
end
