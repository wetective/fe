class UsersController < ApplicationController
  def show
    @user = UserFacade.get_user(params[:id])
  end

  def new
    @user = UserFacade.new
  end

  def create
    @user = UserFacade.create_user(user_params)
    if @user
      redirect_to root_path
      flash[:success] = "Welcome, #{@user.first_name}!"
    else
      redirect_to auth_login_path
      flash[:error] = user.errors.full_messages
    end
  end


  private

  def user_params
    params.permit(:first_name, :email, :password, :password_confirmation, :authenticity_token, :commit)
  end

  def find_user
    @user = User.from_google_auth(request.env['omniauth.auth'])
    if @user
      set_session(@user)
      redirect_to root_path
    else
      redirect_to auth_login_path, notice: "Sorry, your we could not log you in."
    end
  end

  def set_session(user)
    session[:user_id] = user.id
    session[:email] = user.email
    # session[:image] = user.image
    # session[:first_name] = user.username.split.first
    # session[:last_name] = user.username.split.last
  end
end