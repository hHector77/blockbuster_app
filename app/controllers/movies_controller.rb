class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    # Buscar la película por el id que viene en los parámetros
    @movie = Movie.find(params[:id])
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
    # Asegúrate de que los parámetros permitidos coinciden con los atributos correctos
    params.require(:movie).permit(:title, :genre, :release_year)
  end
end
