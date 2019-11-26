class ArtistsController < ApplicationController

    before_action :set_artist, only: [:edit, :show, :update]
    before_action :artist_params, only: [:create, :update]

    def index
        @artists = Artist.all 
    end 

    def new
        @artist = Artist.new
    end 

    def create
        @atrist = Artist.create(artist_params)
        redirect_to artists_path
    end 

    def edit
    end 

    def show
    end 

    def update
        @artist.update(artist_params)
        @artist.save
        redirect_to @artist
    end 

    private 

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end 

    def set_artist
        @artist = Artist.find(params[:id])
    end 


end
