class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def github_authenticated?(user)
    client = get_client(user)
    begin
      client.user
    rescue => e
      puts "*" * 50
      p e
      puts "*" * 50
      return false
    end
    return true
  end

  def get_client(user = current_user || User.new)
    @client = Octokit::Client.new(:login => user.github_username, :password => user.github_password)
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
