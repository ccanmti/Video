class Public::MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save!
    redirect_to request.referer
  end

  def destroy
  end

  def movie_params
    params.require(:movie).permit(:name, :introduction, :genre_id, :video)
  end
end
