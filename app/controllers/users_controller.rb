class UsersController < ApplicationController

  def new
    user = User.new
  end


  def create

  	user = User.find_by(username: user_params[:username])
  	if(user)
  		render html: '<div>Tai khoan da ton tai</div>'.html_safe
  	else
  		@user = User.new(user_params)
  		@user.username.downcase!
  		if(@user.save)
        session[:user_id] = @user.id
    		redirect_to root_path
	    else
	    	render html: '<div>Errors</div>'.html_safe
	    end
  	end
  end

  private

  def user_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end