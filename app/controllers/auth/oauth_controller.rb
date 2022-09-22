class Auth::OauthController < ApplicationController      
  def omniauth
    auth_hash = request.env['omniauth.auth']
    if auth_hash['credentials']['token'].present?
      find_user
    else
      redirect_to login_path, alert: "Sorry, it seems we had trouble processing your request."
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private
    def find_user
      @user = UserFacade.google_oauth(request.env['omniauth.auth'])
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
