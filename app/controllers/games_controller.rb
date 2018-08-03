require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    stateStr=params[:state].to_s
    @game=Game.create(state: stateStr)
    render json: @game
  end

  def show
    @game=Game.find(params[:id])
    render json: @game
  end

  def update
    @game=Game.find(params[:id])
    @game.update(params)
    render json: @game
  end

  def index
    @games=Game.all
    render json: @games
  end

  private
    def game_params
      params.require(:game).permit(:state)
    end
end
