class UsersController < ApplicationController
  def index
    @tips = TipFacade.find_tips(params[:id])
  end
  
  def show
    @user = UserFacade.get_user(params[:id])
  end

  def new
    @user = UserFacade.new
  end

  def create
    @user = @user.find_user(params[:email])
    unless @user == nil
      @user = UserFacade.create_user(user_params)
      if user
        redirect_to user_dashboard_path
        render :notice, "Welcome, #{@user.first_name}!"
      else
        redirect_to new_user_path
        render :alert, "We could not create your account at this time. Please check your inputs and try again."
      end
    end
  end


  private
    def user_params
      params.permit(:first_name, :email, :password, :password_confirmation, :authenticity_token, :commit)
    end

    def find_user
      @user = User.from_google_auth(request.env['omniauth.auth'])
      if @user
        set_session(@user)
        redirect_to user_dashboard_path
      else
        redirect_to auth_login_path, notice: "Sorry, your we could not log you in."
      end
    end

    def set_session(user)
      session[:user_id] = user.id
      session[:email] = user.email
      session[:image] = user.image
    end
end