class PagesController < ApplicationController

  def home
    redirect_to "commits#index" if logged_in?
  end
  
end