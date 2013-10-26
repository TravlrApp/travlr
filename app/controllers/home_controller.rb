class HomeController < ApplicationController
  def welcome
    if session[:user_id] && session[:pass]
      redirect_to posts_path
    end
  end

  def login
  end

  def logout
    reset_session
    redirect_to welcome_path
  end

  def authenticate
  	user = User.find_by user_name: params[:user_name], password: params[:password]

  	if user
      reset_session
      session[:user_id] = user[:id]
      session[:pass] = user
  		redirect_to posts_path
  	else
      flash[:error] = "Invalid username/password combination"
  		redirect_to login_path
  	end
  end
end
