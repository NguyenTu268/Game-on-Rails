class WelcomeController < ApplicationController

  def index
  	@is_logged_in = user_is_logged_in
  	@categories = Category.all.sort{ |a,b| a[:name].length <=> b[:name].length }
  end
end
