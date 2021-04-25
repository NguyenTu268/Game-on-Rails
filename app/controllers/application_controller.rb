class ApplicationController < ActionController::Base
	def user_is_logged_in
    	if !session[:user_id]
        	return false
    	end
    	return true
	end
	def user_isnt_logged_in
    	if session[:user_id]
        	redirect_to root_path
    	end
	end
end
