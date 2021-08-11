class WordsController < ApplicationController
    def index
        words = Word.all
        render json: words, only: [:id, :name, :category]
    end

    def show
        word = Word.find_by(id: params[:id])
        if word
            render json: word, except: [:created_at, :updated_at]
        else
            render json: {message: "word not found"}
        end
    end
end
