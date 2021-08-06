class WordsController < ApplicationController
    def index
        words = Word.all
        render json: words, only: [:name, :category]
    end
end
