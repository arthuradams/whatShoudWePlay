class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
   @game = Game.find(params[:id])
   @game.update(game_params)
   redirect_to game_path(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to '/players/'
  end

  def add_vote
    @game = Game.find(params[:id])
    @game.update(score += 1)
  end

  private
    def game_params
      params.require(:game).permit(:name, :min_players, :max_players, :length, :url1, :url1_desc, :url2, :url2_desc)
    end
end
