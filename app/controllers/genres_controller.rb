class GenresController < ApplicationController

    before_action :set_genre, only: [:edit, :show, :update]
    before_action :genre_params, only: [:create, :update]

    def index
        @genres = Genre.all 
    end 

    def new
        @genre = Genre.new
    end 

    def create
        @genre = Genre.create(genre_params)
        redirect_to genres_path
    end 

    def edit
    end 

    def show
    end 

    def update
        @genre.update(genre_params)
        @genre.save
        redirect_to @genre
    end 

    private 

    def genre_params
        params.require(:genre).permit(:name)
    end 

    def set_genre
        @genre = Genre.find(params[:id])
    end 
end
