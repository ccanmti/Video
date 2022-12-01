class Admin::GenresController < ApplicationController

  def new

  end

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def show

  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save!
    redirect_to request.referer
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to request.referer
  end

  def destroy
    @genre = Genre.find(params[:id])
    @Genre.destroy
    redirect_to genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
