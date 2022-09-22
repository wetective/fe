class SessionsController < ApplicationController
  def omniauth
    auth_hash = request.env['omniauth.auth']
    session[:user_token] = auth_hash[:credentials][:token]
    user = UserFacade.find_create_user(auth_hash[:info])
    if user
      redirect_to user_dashboard_path(user.id)
      flash[:success] = "Successfully Logged In"
    else
      render :new, notice: "Sorry, your we could not log you in."
    end
  end

  def new
    @user ||= UserFacade.find_user(params[:email])
    session[:user] = @user
  end

  def create
    user = UserFacade.find_create_user(params)
    session[:user_id] = user.id
    redirect_to user_dashboard_path(user.id)
    flash[:success] = "Successfully Logged In"
  end

  def destroy
    session.destroy
    render '/', notice: "You have successfully logged out."
    redirect_to root_path
    flash[:success] = "Successfully Logged Out"
  end

  private
    def user_params
      params.permit(:email, :password)
    end

    def find_user
      @user = UserFacade.find_user(request.env['omniauth.auth'][:info][:email])
      if @user
        set_session(@user)
        redirect_to user_dashboard_path
      else
        redirect_to login_path, notice: "Sorry, your we could not log you in."
      end
    end

    def set_session(user)
      session[:user_id] = user.id
      session[:email] = user.email
      # session[:image] = user.image
      session[:first_name] = user.username.split.first
      session[:last_name] = user.username.split.last
    end
end