class InboxController < ApplicationController
  	before_action :authenticate

	#GET /inbox
	#GET /inbox.json
	def index
		@r_messages = Message.where(receiver_id: session[:user_id], read: true)
		@u_messages = Message.where(receiver_id: session[:user_id], read: false)
	end

	private

	def authenticate
      unless session[:user_id]
        flash[:notice] = "You must be logged in to view this page"
        redirect_to login_path
      end
    end
end