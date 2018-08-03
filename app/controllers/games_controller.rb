class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game=Game.create
    render json: @game
  end

  def show
    @game=Game.find(params[:id])
    render json: @game
  end

  def update
    @game=Game.find(params[:id])
    @game.update(params)
  end

  private
    def game_params
      params.require(:game).permit(:state)
    end
end
