class PlayersController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
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
  def update
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to team_player_path(@team, @player)
  end
  private
  def player_params
  params.require(:player).permit(:name,:nationality,:age,:img_id)
  end
end
