class VotesController < ApplicationController

#  before_filter :get_games

  def get_games
    @games = Game.all
  end

  def index
    @games = Game.all
    @votes = Vote.all
    @votes = @votes.sort_by{ |v| [-v.vote_count, @games.find( v.game_id ).name]}
  end

  # AM: What happens after this action is triggered? Because it's not RESTful, we need to indicate where the user should be redirect using either `render` or `redirect_to`
  def up_vote
    @vote = Vote.find(params[:id])
    @vote.update(vote_count += 1)
  end
end
