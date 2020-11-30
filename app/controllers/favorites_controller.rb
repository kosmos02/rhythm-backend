class FavoritesController < ApplicationController
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
            @favorite = Favorite.create(artist_id: params[:artist_id])
        end
    end
    
end
