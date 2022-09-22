class SessionsController < ApplicationController
  def omniauth
    auth_hash = request.env['omniauth.auth']
    session[:user_token] = auth_hash[:credentials][:token]
    auth_hash[:info][:oauth] = true
    binding.pry
    user = UserFacade.find_create_user(auth_hash[:info])
    if user
      redirect_to user_dashboard_path
    else
      render :new, notice: "Sorry, we could not log you in."
    end
  end

  def new
  end

  def create
    binding.pry
    user = UserFacade.find_create_user(params)
    session[:user_id] = user.id
    redirect_to user_dashboard_path
  end

  def destroy
    session.destroy
    flash[:success] = "Successfully Logged Out"
    redirect_to root_path
  end
end