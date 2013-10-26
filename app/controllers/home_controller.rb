class HomeController < ApplicationController
  def welcome
    if session[:user_id] && session[:pass]
      redirect_to posts_path
    end
  end

  def login
  end

  def authenticate
  	password = User.find_by password: params[:password]
  	username = User.find_by name: params[:name]

  	if username && password
      reset_session
      session[:user_id] = username
      session[:pass] = password
  		redirect_to posts_path
  	else
      flash[:error] = "Invalid username/password combination"
  		redirect_to login_path
  	end
  end
end
