class MoviesController < ApplicationController

  def index
    @movies = Movie.all
      # render json: @movies.as_json(only:[:title, :year, :director, :rank])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
