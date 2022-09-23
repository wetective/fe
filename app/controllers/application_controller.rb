class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :current_user, :set_user_id, :google_user_image
  # include Pagy::Backend

  def current_user
    session[:user_id]
  end

  def set_user_id
    @user = params[:user_id]
  end
  
  def google_user_image
    session[:google_user_image]
  end
end
