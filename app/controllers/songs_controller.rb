require 'pry'
class SongsController < ApplicationController
  
  def index
   @songs=Song.all
  end
  def show
    @song= Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

  def new
  	@song = Song.new
  end

  def create

    
    artist=Artist.find_or_create_by(name: 'ahmed')
    genre=Genre.find_or_create_by(name: 'pop')
    @song = Song.new(song_params(:name,:artist_id,:genre_id))
    @song.save
    redirect_to song_path(@song)
  end


  def edit
    @song= Song.find(params[:id])
  end

  def update
    @song= Song.find(params[:id])
    @song.update(song_params(:name,:artist_id,:genre_id))
    redirect_to song_path(@song)
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
