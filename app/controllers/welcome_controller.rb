class WelcomeController < ApplicationController

  def index
  	@is_logged_in = user_is_logged_in
  end
end
