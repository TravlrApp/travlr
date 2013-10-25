class HomeController < ApplicationController
  def welcome
  end

  def login
  end

  def authenticate
  	password = User.find_by password: params[:password]
  	username = User.find_by name: params[:name]

  	if username && password
  		redirect_to posts_path
  	else
  		redirect_to login_path
  	end
  end
end
