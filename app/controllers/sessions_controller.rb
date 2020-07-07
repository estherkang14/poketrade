class SessionsController < ApplicationController
    def login
    end

    def process_login
        username = params[:name]
        @user = User.find_by(name: username)
        if @user && @user.authenticate(params[:password])
            
            session[:user_id] = @user.id
            flash[:message] = "User logged in"
           
            redirect_to user_path(@user.id)
        else 
            flash[:error] = "No user found with that name and password"
            redirect_to :login
        end 
    end 

    def logout
        session.clear
        redirect_to login_path
    end 
end
