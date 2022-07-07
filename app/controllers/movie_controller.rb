class MovieController < ApplicationController
  def index
    @movies = Movie.all
    render template: "movies/index"
  end

  def show
    movies_id = params["id"]
    @movies = Movie.find_by(id: movies_id)
    render template: "movies/show"
  end

  def update
    movie_id = params["id"]
    @movies = Movie.find_by(id: movie_id)

    @movies.title = params["title"] || @movies.title
    @movies.year = params["year"] || @movies.year
    @movies.plot = params["plot"] || @movies.plot
    @movies.save
    render template: "movies/show"
  end

  def destroy
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    movie.destroy
    render json: { message: "Movie deleted" }
  end
end
