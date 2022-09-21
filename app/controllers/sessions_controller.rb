class SessionsController < ApplicationController
  def omniauth
    auth_hash = request.env['omniauth.auth']
    session[:user_token] = auth_hash[:credentials][:token]
    user = UserFacade.find_create_user(auth_hash[:info])
    redirect_to "/dashboard"
  end

  def new
  end

  def create
    user = UserFacade.find_create_user(params)
    session[:user_id] = user.id
    # binding.pry

    redirect_to "/dashboard"
  end

  def destroy
    session.destroy
    flash[:success] = "Successfully Logged Out"
    redirect_to root_path
  end
end