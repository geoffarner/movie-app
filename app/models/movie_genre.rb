class MovieGenre < ApplicationRecord
  has_many :movies
  has_many :genres
end
