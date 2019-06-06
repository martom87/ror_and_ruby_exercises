class SamuraisController < ApplicationController

  before_action :set_clan, only: %i[index]

  def index
    @samurais = @clan.samurais
  end

  private

  def set_clan
    @clan = Clan.find(params[:clan_id])
  end

end