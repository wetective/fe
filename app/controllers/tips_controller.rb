class TipsController < ApplicationController
    def show
      @tip = TipFacade.get_tip(params[:id])
    end
  
    def new
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
        @tip = Tip.from_google_auth(request.env['omniauth.auth'])
        if @tip
          set_session(@tip)
          redirect_to root_path
        else
          redirect_to auth_login_path, notice: "Sorry, your we could not log you in."
        end
      end
  end