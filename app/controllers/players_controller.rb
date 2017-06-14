class PlayersController < ApplicationController
  def show
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
  end
  def new
    @team = Team.find(params[:team_id])
    @player = Player.new
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
  def destroy
    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])
    @player.destroy
    redirect_to team_path(@team)
  end
  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.create(player_params)
    redirect_to team_path(@team)
  end
  private
  def player_params
  params.require(:player).permit(:name,:nationality,:age,:img_url)
  end

end
