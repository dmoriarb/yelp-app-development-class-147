class City < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :dependent => :destroy

  has_many   :neighborhoods,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
