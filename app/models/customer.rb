#class Customer < ApplicationRecord
 # has_many :movies
#end
class Customer < ApplicationRecord
  has_one :movie
end

