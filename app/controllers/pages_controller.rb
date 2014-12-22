class PagesController < ApplicationController

  def home
    
  end

  def commits
    client = Octokit::Client.new
    @commits = client.get("https://api.github.com/repos/dstavis/gitreview/commits")
  end

  def files
    client = Octokit::Client.new
    sha = params[:sha]
    commit = client.get("https://api.github.com/repos/dstavis/gitreview/commits/#{sha}")
    @files = commit.files
  end
end