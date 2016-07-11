class GamesController < ApplicationController

  before_filter :get_player

  def get_player
    @player = Player.find(params[:player_id])
  end

  def index
    @games = Game.all
  end

  def show
    @game = @player.games.find(params[:id])
  end

  def edit
    @game = @player.games.find(params[:id])
  end

  def update
   @game = @player.games.find(params[:id])
   @game.update(game_params)
   redirect_to [@player]
  end

  def destroy
    @game = @player.games.find(params[:id])
    @game.destroy
    redirect_to '/players/'
  end

  def new
    @game = Game.new
  end

  def create
    @game = @player.games.new(game_params)
    if @game.save
      redirect_to @player
    else
      render action: "new"
    end
  end

  def add_vote
    @game = Game.find(params[:id])
    @game.update(score += 1)
  end

  private
    def game_params
      params.require(:game).permit(:name, :min_players, :max_players, :length, :url1, :url1_desc, :url2, :url2_desc, :votes, :player_id)
    end
end
