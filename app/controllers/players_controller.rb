class PlayersController < ApplicationController
    def index
        players = Player.all
        games = Game.all 
        # render json: players, only: [:id, :name]
        render json: players.to_json(:include => {
            :games => {:only => [:score]},
          }, :only => [:id,:name])
    end

    def create
        player = Player.new(player_params)
        if player.save
            render json: player
        else
            render json: {message: player.errors.full_messages}
        end
    end

    def show
        player = Player.find_by(id: params[:id])
        if player
           render json: player, only: [:id, :name]
        else
            render json: {message: "Player not found"}
        end
    end

    private
    def player_params
        params.require(:player).permit(:name)
    end
end
