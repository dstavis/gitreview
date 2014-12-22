class User < ActiveRecord::Base
  validates :username, uniqueness: true
  validates :github_username, uniqueness: true
end
