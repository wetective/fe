class Auth::SessionsController < ApplicationController
  def new
    @user = User.find_by(username: params[:username]) || User.new
    session[:user] = @user
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      if @user.admin?
        redirect_to admin_dashboard_path
      else
        redirect_to user_dashboard_path, notice: "Welcome, #{@user.username}!"
      end
    else
      render :new, alert: "Sorry, your credentials are bad."
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end