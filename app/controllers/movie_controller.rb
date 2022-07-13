class MovieController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def show
    @movies = Movie.find_by(id: params[:id])
    render :show
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:true],
    )
    if @movie.save
      render :show
    else
      render json: { errors: @movie.errors.full_messages }, status: 418
    end
  end

  def update
    @movies = Movie.find_by(id: params[:id])

    @movies.title = params[:title] || @movies.title
    @movies.year = params[:year] || @movies.year
    @movies.plot = params[:plot] || @movies.plot
    @movies.director = params[:director] || @movies.director
    @movies.english = parmams[:english] || @movies.english
    if @movie.save
      render :show
    else
      render json: { errors: @movies.errors.full_message },
             status: 418
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: { message: "Movie deleted" }
  end
end
