class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def show
    @movie = Movie.find(params[:id]) 
  end
  
  def new
    @movie = Movie.new
    # default: render 'new' template
  end 
  
  # add below all other methods
  private
  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end