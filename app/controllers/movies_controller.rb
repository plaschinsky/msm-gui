class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params.fetch("id"))
  end

  def create
    movie = Movie.new
    movie.title = params.fetch("query_title")
    movie.image = params.fetch("query_image")
    movie.save
    redirect_to("/movies")
  end

  def update
    movie = Movie.find(params.fetch("id"))
    movie.image = params.fetch("query_image")
    movie.save
    redirect_to("/movies/#{movie.id}")
  end

  def destroy
    movie = Movie.find(params.fetch("id"))
    movie.destroy
    redirect_to("/movies")
  end
end
