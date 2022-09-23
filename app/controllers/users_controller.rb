class UsersController < ApplicationController
  def index
    @tips = TipFacade.find_tips(params[:id])
  end
  
  def show
    @user = UserFacade.get_user(params[:id])
  end

  private
    def user_params
      params.permit(:first_name, :email, :password, :password_confirmation, :authenticity_token, :commit)
    end
end