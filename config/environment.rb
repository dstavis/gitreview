# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Octokit.configure do |c|
  c.login = "dstavis"
  c.password = "makeschool1"
end

CLIENT = Octokit::Client.new

client.get("https://api.github.com/repos/dstavis/gitreview/commits")

# client.get(Octokit.user.repos_url).select{|repo| repo.name = 'gitreview'}.first.id

# 9740394

# client = Octokit::Client.new(access_token: my_token)
# user = client.user
# events = client.user_events user.login


# client.get("https://api.github.com/repos/dstavis/gitreview/commits")