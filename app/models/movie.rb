class Movie < ApplicationRecord
  has_many :actors
  belongs_to :movie_genre

  def genre_names
    movie_genre.map do |movie_genre|
      p movie_genre.name
    end
  end

  #   validates :year, minimum: 4
  #   validates :director, presence: true
  #   validates :title, presence: true
end
