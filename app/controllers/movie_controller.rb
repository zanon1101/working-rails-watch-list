class MovieController < ApplicationController
    def index
    end

    def create
        @movie = Movie.new
    end
end
