class Neighborhood < ApplicationRecord
  # Direct associations

  belongs_to :city

  # Indirect associations

  has_one    :restaurant,
             :through => :city,
             :source => :city

  # Validations

end
