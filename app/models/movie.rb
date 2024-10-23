class Movie < ApplicationRecord
  belongs_to :customer, optional: true

  validates :title, presence: true
  validates :genre, presence: true,
                    inclusion: { in: %w(Action Comedy Drama Horror Sci-Fi Romance), message: "%{value} no es un género válido" }
  validates :release_year, presence: true,
                           numericality: { only_integer: true,
                                           greater_than: 1800,
                                           less_than_or_equal_to: Date.current.year }
  validates :description, presence: true,
                          length: { minimum: 10 }
end