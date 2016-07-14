class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to [@player]
    else
      render action: "new"
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
   @player = Player.find(params[:id])
   @player.update(player_params)
   redirect_to player_path(@player)
  end

  # AM: Do you use this action at all in your app?
  def vote
    @votes = Vote.all
    @games = Game.all
    @player = Player.find(params[:id])
  end

  private
    def player_params
      params.require(:player).permit(:name)
    end
end
