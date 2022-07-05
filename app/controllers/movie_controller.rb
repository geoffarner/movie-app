class MovieController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movies = Movie.find_by(id: params[:id])
    render json: movies.as_json
  end
end
