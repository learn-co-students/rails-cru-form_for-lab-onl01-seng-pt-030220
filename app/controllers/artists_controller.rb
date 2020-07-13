class ArtistsController < ApplicationController
    def show 
        find_artist
    end 
    
    def new 
        @artist = Artist.new
    end 

    def edit 
        find_artist
    end 

    def create 
        @artist = Artist.create(params.require(:artist).permit(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end 

    def update 
        find_artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(find_artist)
    end 

    private 

    def find_artist 
        @artist = Artist.find(params[:id])
    end 
end
