class Review < ApplicationRecord
  # Direct associations

  belongs_to :customer

  has_many   :photos,
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
