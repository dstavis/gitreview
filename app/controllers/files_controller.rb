class FilesController < ApplicationController
  before_action :require_login
  before_action :get_client
  
  def show
    path = params[:id]
    binding.pry
    @file = @client.get("https://api.github.com/repos/dstavis/gitreview/contents/#{path}")
  end
end
