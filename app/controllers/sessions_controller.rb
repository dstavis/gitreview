class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find(params[:username])
    if params[:password] == user.password
      session[:user_id] = user.id
      redirect_to "commits#index"
    else
      redirect_to "sessions#new"
    end
  end

  def destroy
    # logout
    session[:user_id] = nil
  end
end
