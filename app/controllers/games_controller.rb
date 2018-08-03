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

  private

end
