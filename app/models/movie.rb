class Movie < ApplicationRecord
  belongs_to :customer, optional: true
end
