class MovieController < ApplicationController
    def index
    end

    def create
        @movie = Movie.new
    end

    def article_params
        params.require(:article).permit(:title, :body, :photo)
      end
end
