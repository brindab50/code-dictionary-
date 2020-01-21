class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
      session[:user] = user.id
      redirect_to "/profile"
    else
      redirect_to "/login"
    end
    
  end

  def destroy
    session.delete(:user)
  end

end
