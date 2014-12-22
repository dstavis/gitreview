class CommentsController < ApplicationController
  before_action :require_login
  before_action :get_client

  def new
  end

  def create
    sha = params[:commit_id]
    commit = @client.get("https://api.github.com/repos/dstavis/gitreview/commits/#{sha}")
    success = @client.post(commit.comments_url, {body: params[:body]})
    redirect_to commit_path(:commit_id)
  end

  def destroy
    
  end
end
