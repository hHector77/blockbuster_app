class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def edit
    @movie = Movie.find(params[:id])
    @customers = Customer.all
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path, notice: "Película actualizada con éxito"
    else
      render :edit
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :year, :customer_id)
  end
end
