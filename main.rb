require 'octokit'
require 'dotenv'

Dotenv.load

client = Octokit::Client.new(
  login: ENV['GITHUB_USER'],
  password: ENV['GITHUB_TOKEN']
)

p client.user

p client.all_repositories
