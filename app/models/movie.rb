class Movie < ApplicationRecord
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  has_many :actors

  # def genre_names
  #   movie_genre.map do |movie_genre|
  #     p movie_genre.name
  #   end
  # end

  #   validates :year, minimum: 4
  #   validates :director, presence: true
  #   validates :title, presence: true
end
