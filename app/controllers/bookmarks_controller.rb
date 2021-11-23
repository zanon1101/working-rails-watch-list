class BookmarksController < ApplicationController
    def new
        @list = List.find(params[:list_id])
        @bookmark = Bookmark.new
    end

    def create
        @list = List.find(params[:list_id])
        @bookmark = Bookmark.new(bookmark_params)
        @bookmark.list = @list

        if @bookmark.save 
            redirect_to list_path(@list)
        else
            render :new
        end
    end
    # controller 'destroy' action / method
    def destroy 
        @bookmark = Bookmark.find(params[:id])
        # active record 'destroy' method
        @bookmark.destroy 
        redirect_to list_path(@bookmark.list)
    end

    private

    def bookmark_params
        params.require(:bookmark).permit(:comment, :movie_id)
    end

    def set_bookmark
        @bookmark = Bookmark.find(params[:id])
    end

    def set_list
        @list = List.find(params[:list_id])
    end
end
