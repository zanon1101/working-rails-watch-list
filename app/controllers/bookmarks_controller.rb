class BookmarksController < ApplicationController
    def new
    end

    def create
    end

    private

    def bookmark_params
        params.require(:bookmark).permit(:content)
    end
end
