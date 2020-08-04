class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def show 
        @genre = genre.find(params[:id])
    end

    def new
        @genre = genre.new
    end

    def create
        @genre = genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = genre.find(params[:id])
    end

    def update
        @genre = genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    private

        def genre_params
            params.require(:genre).permit(:name)
        end
end
