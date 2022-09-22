class SessionsController < ApplicationController
  def new
    @user ||= UserFacade.find_user(params[:email])
    session[:user] = @user
  end

  def create
    @user = UserFacade.find_user(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_dashboard_path
    else
      render :login, alert: "Sorry, your credentials are bad."
    end
  end

  def login; end

  def omniauth
    auth_hash = request.env['omniauth.auth']
    session[:user_token] = auth_hash[:credentials][:token]
    user = UserFacade.find_create_user(auth_hash[:info])
    if user
      redirect_to user_dashboard_path
    else
      render :new, notice: "Sorry, your we could not log you in."
    end
  end

  # def new
  #   if params[:email]
  #     find_user
  #   end
  # end

  # def create
  #   user = find_user
  #   if user == nil
  #     user = UserFacade.create_user(params)
  #     session[:user_id] = user.id
  #     redirect_to user_dashboard_path
  #   else
  #     render :new, notice: "Sorry, your we could not log you in."
  #   end
  # end

  def destroy
    session.destroy
    render '/', notice: "You have successfully logged out."
    redirect_to root_path
  end

  private
    def find_user
      @user = UserFacade.find_user(params[:email])
    end

    def user_params
      params.permit(:email, :password)
    end
end