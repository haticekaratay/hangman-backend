class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games.to_json(:include => {
                :player => {:only => [:name,:id]},
              }, :only => :score)
    end

  
   
end
