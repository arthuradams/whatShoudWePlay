class GamesController < ApplicationController

  before_filter :get_player

  def get_player
    @player = Player.find(params[:player_id])
  end

  def index
    @games = Game.all
  end

  def show
    # If you use `before_filter` or `before_action` to run the below line of code, you don't need to write it in your controller methods anymore.
    @game = @player.games.find(params[:id])
  end

  def edit
    @game = @player.games.find(params[:id])
  end

  def update
   @game = @player.games.find(params[:id])
   @game.update(game_params)
   # AM: No need for square brackets here. We tend to only use square brackets when the path helper requires multiple arguments (e.g., references to a player and a game).
   redirect_to [@player]
  end

  def destroy
    @game = @player.games.find(params[:id])
    @game.destroy
    redirect_to [@player]
  end

  def new
    @game = Game.new
  end

  def create
    @game = @player.games.new(game_params)
    if @game.save
      # AM: You could condense the below two lines into `@vote = Vote.new(game: @game)`
      @vote = Vote.new
      @vote.game_id = @game.id
      @vote.save
      redirect_to @player
    else
      render action: "new"
    end
  end

  def add_vote
    @vote = Vote.find(params[:id])
    @vote.vote_count += 1
    @vote.save
    redirect_to votes_path
  end

  private
    # AM: Do you need to pass `player_id` in through strong params? I think you can just pull that id from the URL.
    def game_params
      params.require(:game).permit(:name, :min_players, :max_players, :length, :url1, :url1_desc, :url2, :url2_desc, :votes, :player_id)
    end
end
