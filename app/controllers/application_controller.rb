class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :current_user, :set_user_id
  # include Pagy::Backend

  def current_user
    session[:user_id]
  end

  def set_user_id
    @user = params[:user_id]
  end
end
