class SongsController < ApplicationController

def show 
@song = Song.find(params[:id])
end

def index 
@song = Song.all
end

def new 
@song = Song.new
end

def create 
@song = Song.new(strong_params(:name))
@song.save 
redirect_to song_path(@song)
end

def edit 
@song = Song.find(params[:id])
end

def update 
@song = Song.find(params[:id]) 
@song.update(strong_params(:name))
@song.save 
redirect_to song_path(@song)
end 

private 

def strong_params(*args) 
params.require(:song).permit(*args)
end

end
