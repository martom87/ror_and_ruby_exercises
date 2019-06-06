module Api
  module V1
    class ClansController < ApplicationController
      skip_before_action :verify_authenticity_token

      def index
        clans = Clan.all
        render json: clans.to_json(only: %w[id name])
      end

      def create
        clan = Clan.new(clan_params)
        if clan.save
          render json: clan.to_json(only: %i[id name]), status: 201
        else
          render json: {error: clan.errors.full_messages}, status: 422
        end
      end

      def update
        clan = Clan.find(params[:id])
        clan.update(clan_params)
        head 204
      end

      def destroy
        clan = Clan.find(params[:id])
        clan.destroy!
        head 204
      end

      private

      def clan_params
        params.require(:clan).permit(:name)
      end

    end
  end
end



