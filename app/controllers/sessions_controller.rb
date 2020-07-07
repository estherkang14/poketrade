class SessionsController < ApplicationController
    def login
    end

    def process_login
        username = params[:name]
        @user = User.find_by(name: username)
        if @user
            session["user"] = @user.id
            redirect_to user_path(@user.id)
        else 
            flash.now[:error] = "No user found with that name"
            render :login
        end 
    end 

    def logout
        session.clear
        redirect_to login_path
    end 
end
