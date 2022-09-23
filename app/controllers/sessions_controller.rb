class SessionsController < ApplicationController
  def omniauth
    auth_hash = request.env['omniauth.auth']
    auth_hash[:info][:oauth] = true
    auth_hash[:info][:password] = 'google_oauth_password' #but what's a better way to do this?
    session[:google_user_image] = auth_hash[:info][:image]
    attributes = UserService.send_user(auth_hash[:info])
    redirect_logic(attributes)
  end

  def user_create
    params[:oauth] = false
    attributes = UserService.send_user(params)
    redirect_logic(attributes)
  end

  def user_login
    params[:oauth] = false
    attributes = UserService.login_user(params)
    redirect_logic(attributes)
  end

  def destroy
    session.destroy
    render '/', notice: "You have successfully logged out."
    redirect_to root_path
    flash[:success] = "Successfully Logged Out"
  end

  private
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
end