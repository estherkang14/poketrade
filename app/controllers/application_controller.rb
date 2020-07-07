class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        
        @current_user = User.find_by(id: session[:user_id])
        
    end 

    def logged_in?
        
    #     if current_user
    #         return true
    #     else
    #         false
    # end
    !!current_user
    end

def authorized
    redirect_to login_path unless logged_in?
    # if !logged_in?
    #     redirect_to login_path
    # end
end
end
