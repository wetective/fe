class SessionsController < ApplicationController
  def new
    @user ||= UserFacade.find_user(params[:email])
    session[:user] = @user
  end

  def create
    @user = UserFacade.find_and_authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_dashboard_path
    else
      render :login, alert: "Sorry, your credentials are bad."
    end
  end

  def login; end

  def omniauth
    auth_hash = request.env['omniauth.auth']
    if auth_hash != nil
      auth_hash['credentials']['token']
      pass = SecureRandom.hex(15)
      @user = UserFacade.find_and_authenticate(auth_hash[:info][:email], pass)
      find_user
    else
      redirect_to login_path, alert: "Sorry, it seems we had trouble processing your request."
    end
  end

  def destroy
    session.destroy
    render '/', notice: "You have successfully logged out."
    redirect_to root_path
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