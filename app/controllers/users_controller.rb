class UsersController < ApplicationController
  before_action :authorized?, except: [:new, :create]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  ## add new

  def create
    # user = User.create!(user_params)
    # doesnt flash error message when you do create! but works without !
    user = User.create(user_params)

    if user.valid?
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:errors] = user.errors.full_messages
      # redirect_to '/signup'
      redirect_to signup_path
      # can use name_path or '/name'
      #
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def dictionary
    @user = current_user
  end

  def favorite
    @user = current_user
  end

  # def update 
  #   byebug
  # end

  private

  def user_params 
    params.require(:user).permit(:name, :username, :password)
  end

end
