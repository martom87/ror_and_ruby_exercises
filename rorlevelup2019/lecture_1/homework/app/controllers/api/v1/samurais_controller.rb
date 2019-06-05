module Api
  module V1
    class SamuraisController < ApplicationController
      before_action :set_clan, only: %i[index]

      def index
        @samurais = Samurai.all
        render json: @samurais.to_json(only: %w[id name armor])
      end

      private

      def set_clan
        @clan = Clan.find(params[:clan_id])
      end
    end
  end
end