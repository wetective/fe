class InvestigationsController < ApplicationController
  helper_method :random_dog
  before_action :set_user_id

  def index
    @page = 1
    @user_id = params[:user_id]
    @investigations = InvestigationFacade.get_all_investigations(@page)
    @investigations.delete(nil)
    @investigations.shuffle!
  end
  
  def show    
    @investigation = InvestigationFacade.get_investigation(params[:id])
  end
end
