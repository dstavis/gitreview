class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_client
    @client = Octokit::Client.new
  end

  def require_login
    redirect_to "pages#home" unless logged_in?
  end

  private

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    User.find(session[:user_id])
  end
end
