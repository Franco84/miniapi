require 'open-uri'

module Api::V1
  class ChampionsController < ApplicationController

    def index
      @champions = Champion.all
      render json: @champions
    end

    def show
      @champion = Champion.find(params[:id])
      render json: @champion
    end

  end
end
