class GamesController < ApplicationController
  # Add your GamesController code here
  def initialize()
    @state=[]
  end

  def create()
    game=Game.create(game_params)
    render json: game, status: 201
  end

  def index
    games= Game.all
    render json: games
  end

private
  def game_params
    params.permit(state: [])
  end

  def game_params
    @game=Game.find(params[:id])
  end
end
