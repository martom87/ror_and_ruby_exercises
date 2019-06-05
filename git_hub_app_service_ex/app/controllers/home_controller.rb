class HomeController < ApplicationController

  def index
    service = GitHubService.new(params[:search_term])
    @parsed_repositories = service.call
    puts @parsed_repositories

  end


end