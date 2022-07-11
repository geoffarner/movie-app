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

  def create
    Movie.create(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params[""],
    )
    render template: "movies/show"
  end

  def update
    movies_id = params["id"]
    @movies = Movie.find_by(id: movies_id)

    @movies.title = params["title"] || @movies.title
    @movies.year = params["year"] || @movies.year
    @movies.plot = params["plot"] || @movies.plot
    @movies.director = params["director"] || @movies.director
    @movies.english = parmams[""] || @movies.english
    @movies.save
    render template: "movies/show"
  end

  def destroy
    movies_id = params["id"]
    movie = Movie.find_by(id: movies_id)
    movie.destroy
    render json: { message: "Movie deleted" }
  end
end
