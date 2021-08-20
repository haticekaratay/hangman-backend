class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games.to_json(:include => {
                :player => {:only => [:name,:id]},
              }, :only => :score)
    end

    def create
        game = Game.new(game_params)
        if game.save
            render json: game
        else
            render json: {message: "Game creation is not succesfull."}
        end
    end

    private
    
    def game_params
        params.require(:game).permit(:player_id, :score)
    end
   
end
