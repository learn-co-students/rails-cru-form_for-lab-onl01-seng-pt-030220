class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = current_song
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  def edit
    @song = current_song
  end

  def update
    @song = current_song
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def current_song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
