class PlayersController < ApplicationController
    def index
        players = Player.all
        games = Game.all 
        render json: players.to_json(:include => {
            :games => {:only => [:score]},
          }, :only => [:id,:name])
    end

    def create
        Player.create(name: params[:name])
    end

    def show
        player = Player.find_by(id: params[:id])
        if player
           render json: player, only: [:id, :name]
        else
            render json: {message: "Player not found"}
        end
    end
end
