class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game=Game.create(game_params)
    render json: @game
  end
end
