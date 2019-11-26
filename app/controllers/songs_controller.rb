class SongsController < ApplicationController

    before_action :set_song, only: [:edit, :show, :update]
    before_action :song_params, only: [:create, :update]

    def index
        @songs = Song.all 
    end 

    def new
        @song = Song.new
        @genres = Genre.all
        @artists = Artist.all
       
    end 

    def create
        @song = Song.create(song_params)
        
        redirect_to songs_path
    end 

    def edit
    end 

    def show
        @genre = @song.genre
        @artist = @song.artist
    end 

    def update
        @song.update(song_params)
        @song.save
        redirect_to @song
    end 

    private 

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 

    def set_song
        @song = Song.find(params[:id])
    end 


end
