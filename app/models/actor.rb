class Actor < ApplicationRecord
  belongs_to :movie
  validates :first_name, minimum: 2
  validates :last_name, minimum: 2
  validates :known_for, presence: true
  validates :age, minimum: 13
end
