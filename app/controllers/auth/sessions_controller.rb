class Auth::SessionsController < ApplicationController
  def omniauth
    auth_hash = request.env['omniauth.auth']
    session[:access_token] = auth_hash[:credentials][:token]
    user = UserFacade.find_create_user(auth_hash[:info])

    redirect_to "/dashboard"
  end

  def index

  end

  def new
    if params[:username]
      @user = UserFacade.get_user(username: params[:username]) 
      session[:user_id] = @user
    end
  end

  def create
    session[:user_id] = params[:user_id]
    redirect_to "/dashboard"
  end

  def destroy
    session.destroy
    flash[:success] = "Successfully Logged Out"
    redirect_to root_path
  end

  private
    def set_user
      @user = UserFacade.get_user(username: params[:username]) || nil
    end
end


  # def login_form; end

  # def login
  #   user = User.find_by(username: params[:username])
  #   if user && user.authenticate(params[:password])
  #     flash[:success] = "Welcome back, #{user.username}!"
  #   else
  #     flash[:error] = "Yikes. That didn't go as planned. Try again?"
  #     render :login_form
  #   end
  # end