module Api
  module V1
    class SamuraisController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_clan, only: %i[index create]
      before_action :set_samurai, only: %i[destroy]

      def create
        samurai = @clan.samurais.new(samurai_params)
        if samurai.save
          render json: samurai.to_json(only: SAMURAI_DATA), status: 201
        else
          render json: {errors: samurai.errors.full_messages}, status: 422
        end
      end

      def index
        @samurais = Samurai.all
        render json: @samurais.to_json(only: %w[id name armor])
      end

      def update

      end

      def destroy
        @samurai.destroy!
        head 204
      end

      private

      SAMURAI_DATA = %i[name armor battles_number enrolled died].freeze

      def samurai_params
        params.require(:samurai).permit(SAMURAI_DATA)
      end

      def set_clan
        @clan ||= Clan.find(params[:clan_id])
      end

      def set_samurai
        @samurai = Samurai.find(params[:id])
      end

    end
  end
end