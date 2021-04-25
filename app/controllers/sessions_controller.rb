class SessionsController < ApplicationController

	def new
	end
	def create
		user = User
			.find_by(username: params[:user][:username])
			.try(:authenticate, params[:user][:password])
	  	if(user)
	  		session[:user_id] = user.id
	  		render json: {
	  			status: "OK",
	  			logged_in: true,
	  			user: user
	  		}
	  	else
	  		render json: {
	  			status: 401
	  		}
	  	end
	end
	def destroy
		session.delete(:user_id)
    	redirect_to login_path
	end
end