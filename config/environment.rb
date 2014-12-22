# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Octokit.configure do |c|
  c.login = "dstavis"
  c.password = "makeschool1"
end

# CLIENT = Octokit::Client.new

# client.get("https://api.github.com/repos/dstavis/gitreview/commits")

# client.get(Octokit.user.repos_url).select{|repo| repo.name = 'gitreview'}.first.id

# 9740394

# client = Octokit::Client.new(access_token: my_token)
# user = client.user
# events = client.user_events user.login


# client.get("https://api.github.com/repos/dstavis/gitreview/commits")

# qcommit.sha
#  => "a1a88beb0dd8946407f3d50d6424caeac6389456" 
# 2.0.0-p481 :071 > sha = _
#  => "a1a88beb0dd8946407f3d50d6424caeac6389456" 
# 2.0.0-p481 :072 > client.get("https://api.github.com/repos/dstavis/quacker/commits/#{sha}")