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
  end

  def create
    user = UserFacade.find_create_user(params)
    session[:user_id] = user.id
    redirect_to user_dashboard_path(user.id)
    flash[:success] = "Successfully Logged In"
  end

  def destroy
    session.destroy
    redirect_to root_path
    flash[:success] = "Successfully Logged Out"
  end
end