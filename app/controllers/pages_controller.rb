class PagesController < ApplicationController

  def home
    redirect_to controller: :commits, action: :index if logged_in?
  end
  
end