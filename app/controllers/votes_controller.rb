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

  def up_vote
    @vote = Vote.find(params[:id])
    @vote.update(vote_count += 1)
  end
end
