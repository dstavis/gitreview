class CommitsController < ApplicationController
  before_action :require_login
  before_action :get_client

  # This is the same as a "repository"
  def index
    @commits = @client.get("https://api.github.com/repos/dstavis/gitreview/commits")
  end

  # This is a single commit
  def show
    sha = params[:id]
    # 27531a4402b654076356a2cf2453d318ba511a3b has a comment
    # client.get("https://api.github.com/repos/dstavis/gitreview/commits/27531a4402b654076356a2cf2453d318ba511a3b")
    commit = @client.get("https://api.github.com/repos/dstavis/gitreview/commits/#{sha}")

    @files = commit.files
    # Should show the files in that commit
    # The comments on the commit
    # (if any of the comments have author.username == current_user.username, they have a delete option)
    # Form_for to add a new comment

    # comments#show
    @comments = @client.get(commit.comments_url)
  end
end