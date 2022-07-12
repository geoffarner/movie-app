class Actor < ApplicationRecord
  validates_length_of :first_name, minimum: 2
  validates_length_of :last_name, minimum: 2
  validates :known_for, presence: true
  validates :age, minimum: 13
end
