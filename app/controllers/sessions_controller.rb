class SessionsController < ApplicationController
  def new
    '/login'
  end

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render new_user_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end