class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate, only: [:index, :show, :edit, :update]

  # GET /users
  # GET /users.json
  def index
    @users = Rails.cache.read("all_users")
    unless @users
      @users = User.all
      Rails.cache.write("all_users", @users)
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end 

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.name
        session[:pass] = @user.password

        format.html { redirect_to posts_path, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      key = 'user' + params[:id]
      @user = Rails.cache.read(key)
      unless @user
        @user = User.find(params[:id])
        Rails.cache.write(key, @user)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :first_name, :last_name, :age, :email, :password)
    end

    def authenticate
      unless session[:user_id] && session[:pass]
        flash[:notice] = "You must be logged in to view this page"
        redirect_to login_path
      end
    end
end
