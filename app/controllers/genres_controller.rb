class GenresController < ApplicationController
  def show
    get_genre
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(show_params(:name))
    redirect_to @genre
  end

  def edit
    get_genre
  end

  def update
    get_genre
    @genre.update(show_params(:name))
    redirect_to @genre
  end

  private
  def get_genre
    @genre = Genre.find(params[:id])
  end

  def show_params(*args)
    params.require(:genre).permit(*args)
  end
end
