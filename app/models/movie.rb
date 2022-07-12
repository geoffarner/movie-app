class Movie < ApplicationRecord
  validates_length_of :year, minimum: 4
  validates :director, presence: true
  validates :title, presence: true
end
