class Review < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
