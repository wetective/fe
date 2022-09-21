class ApplicationController < ActionController::Base
  helper_method :current_user, :current_admin?
  # include Pagy::Backend

  def current_user
    session[:user_token] || session[:user_id]
  end
end
