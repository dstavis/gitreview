class PagesController < ApplicationController

  def home
    
  end

  def commits
    client = Octokit::Client.new
    @commits = client.get("https://api.github.com/repos/dstavis/gitreview/commits")
  end
end
