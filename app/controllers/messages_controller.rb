class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :destroy]
  before_action :authenticate

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message.read = true
    @message.save
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # POST /messages
  # POST /messages.json
  def create
    info = message_params
    @message = Message.new( )
    @message.subject = info[:subject]
    @message.body = info[:body]
    @message.sender_id = session[:user_id]
    @message.receiver_username = info[:receiver_username]
    recipient = User.find_by user_name: info[:receiver_username]
    @message.receiver_id = recipient.id
    @message.read = false;

    respond_to do |format|
      if @message.save
        format.html { redirect_to inbox_path }
        format.json { render action: 'show', status: :created, location: @message }
      else
        format.html { render action: 'new' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to inbox_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:subject, :body, :receiver_username, :user_name)
    end

    def authenticate
      unless session[:user_id]
        flash[:notice] = "You must be logged in to view this page"
        redirect_to login_path
      end
    end
end
