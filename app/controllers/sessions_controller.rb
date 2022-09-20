class SessionsController < ApplicationController
    def omniauth
        auth_hash = request.env['omniauth.auth']
        session[:access_token] = auth_hash[:credentials][:token]
        user = UserFacade.find_create_user(auth_hash[:info])

        redirect_to "/dashboard"
    end

    def new
    end

    def create
        session[:user_id] = params[:user_id]
        redirect_to "/dashboard"
    end

    def destroy
        session.destroy
        flash[:success] = "Successfully Logged Out"
        redirect_to root_path
    end
end