# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Octokit.configure do |c|
  c.login = "dstavis"
  c.password = "makeschool1"
end