class Photo < ApplicationRecord
  # Direct associations

  belongs_to :review

  # Indirect associations

  has_many   :customer,
             :through => :photos,
             :source => :customer

  has_many   :restaurant,
             :through => :review,
             :source => :restaurant

  # Validations

end
