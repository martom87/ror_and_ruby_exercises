class GitHubService
  require 'json'
  require 'ostruct'
  include HTTParty

  base_uri 'https://api.github.com/'


  def initialize(user='martom87')
    @user = user
  end

  def call
    download_repos(@user)
  end


  private


  def download_repos(user)
    repos = self.class.get("/users/#{user}/repos")
    parse_repositories(repos)
  end

  def parse_repositories(repos)
    JSON.parse(repos.body)
  end

end