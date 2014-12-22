class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && params[:password] == user.password && github_authenticated?(user)
      session[:user_id] = user.id
      redirect_to controller: 'commits', action: 'index'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    # logout
    session[:user_id] = nil
    redirect_to controller: 'pages', action: 'home'
  end
end
