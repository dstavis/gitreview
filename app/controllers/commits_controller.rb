class CommitsController < ApplicationController
  before_action :require_login
  before_action :get_client

  # This is the same as a "repository"
  # TODO: Make the repository easy to change
  def index
    @commits = @client.get("https://api.github.com/repos/dstavis/gitreview/commits")
  end

  # This is a single commit
  def show
    sha = params[:id]
    commit = @client.get("https://api.github.com/repos/dstavis/gitreview/commits/#{sha}")

    @files = commit.files
    
    # (if any of the comments have author.username == current_user.username, they have a delete option)
    
    @comments = @client.get(commit.comments_url)
  end
end