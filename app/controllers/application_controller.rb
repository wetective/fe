class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :current_user, :current_admin?
  # include Pagy::Backend

  def current_user
    session[:user_id]
  end
end
