class PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
  end
  def new
    @player = Player.find(params[:player_id])
    @team = Team.new
  end
  def edit
  @team = Team.find(params[:team_id])
   @player = Player.find(params[:id])
  end
end
