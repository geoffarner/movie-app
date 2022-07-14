class Movie < ApplicationRecord
  has_many :actors
  #   validates :year, minimum: 4
  #   validates :director, presence: true
  #   validates :title, presence: true
end
