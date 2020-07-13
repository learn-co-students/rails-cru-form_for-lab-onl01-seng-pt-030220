class SongsController < ApplicationController

    def index
    end 

    def show 
        find_song
    end 

    def edit 
        find_song
    end

    def new 
        @song = Song.new
    end 

    def create 
        @song = Song.create(params.require(:song).permit(:artist_id, :genre_id, :name))
        redirect_song(@song)
    end 

    def update 
        find_song.update(params.require(:song).permit(:artist_id, :genre_id, :name))
        redirect_song(find_song)
    end 

    private 

    def find_song
        @song = Song.find(params[:id])
    end 

    def redirect_song(song)
        redirect_to song_path(song)
    end 
end
