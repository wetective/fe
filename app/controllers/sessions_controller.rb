class SessionsController < ApplicationController
  def omniauth
    auth_hash = request.env['omniauth.auth']
    auth_hash[:info][:oauth] = true
    auth_hash[:info][:password] = 'google_oauth_password' #but what's a better way to do this?
    attributes = UserService.send_user(auth_hash[:info])
    redirect_logic(attributes)
  end

<<<<<<< HEAD
  def new
    @user ||= UserFacade.find_user(params[:email])
    session[:user] = @user
  end

  def create
    user = UserFacade.find_or_create(params)
    session[:user_id] = user.id
    redirect_to user_dashboard_path(user.id)
    flash[:success] = "Successfully Logged In"
=======
  def user_create
    params[:oauth] = false
    attributes = UserService.send_user(params)
    redirect_logic(attributes)
  end

  def user_login
    params[:oauth] = false
    attributes = UserService.login_user(params)
    redirect_logic(attributes)
>>>>>>> main
  end

  def destroy
    session.destroy
    render '/', notice: "You have successfully logged out."
    redirect_to root_path
    flash[:success] = "Successfully Logged Out"
  end

  private
<<<<<<< HEAD
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
=======
  def redirect_logic(attributes)
    if attributes.has_key?(:data)
        session[:user_id] = attributes[:data][:id]
        redirect_to user_dashboard_path(attributes[:data][:id])
        flash[:message] = "You're logged in"
    elsif attributes.has_key?(:message)
        redirect_to request.referrer
        flash[:alert] = "#{attributes[:message]}"
    else
        redirect_to request.referrer
        flash[:alert] = "Something went wrong"       
    end
  end
>>>>>>> main
end