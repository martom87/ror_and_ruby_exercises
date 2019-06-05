class ClansController < ApplicationController
  def index
    @clans = Clan.all
  end

  def new
    @clan = Clan.new
  end


end