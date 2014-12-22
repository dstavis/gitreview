class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_or_initialize_by(username: user_params[:username])
    user.update_attributes(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to :controller => :commits, :action => :index
    else
      redirect_to action: :new
    end
  end

  def destroy
    # Delete account
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :github_username, :github_password)
  end
end