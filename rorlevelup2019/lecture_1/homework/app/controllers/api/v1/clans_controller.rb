module Api
  module V1
    class ClansController < ApplicationController
      def index
        clans = Clan.all
        render json: clans.to_json(only: %w[id name])
      end
    end
  end
end



