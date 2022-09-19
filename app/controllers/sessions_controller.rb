class SessionsController < ApplicationController
    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            redirect_to '/login'
        end
    end

    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            flash[:success] = "Welcome, #{user.email}!"
            redirect_to root
        else
            flash[:error] = "Sorry, your credentials are bad"
            render :new
    end
end