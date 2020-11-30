class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all 

        render json: @favorites
    end

    def show
        @favorite = Favorite.where(params[:id])

        render json: @favorite
    end

    def create
        @favorite = Favorite.create(
            artist: params[:artist], 
            title: params[:title], 
            duration: params[:duration], 
            album: params[:album],
            album_image: params[:album_image]
            )
    end
end
