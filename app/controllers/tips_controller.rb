class TipsController < ApplicationController
  def index
    @tips = TipFacade.find_tips(params[:id])
  end
  
  def show
    @tip = TipFacade.get_tip(params[:id])
  end

  def new
    @investigation = InvestigationFacade.get_investigation(params[:uid])
    @investigation = InvestigationFacade.cities_investigations("Denver").first

    @tip = TipFacade.new
  end

  def create
    @tip = @tip.create_tip(tip_params)
    if @tip
      redirect_to :back
      render :notice, "Your tip was submitted successfully."
    else
      redirect_to :new
      render :alert, "We could not submit your tip at this time. Please check your inputs and try again."
    end
  end

  private
    def tip_params
      params.permit(:uid, :location, :date, :time, :description, :user_id)
    end
  
    def find_tip
      @tip = Tip.find_tips(request.env['omniauth.auth'])
    end
end
