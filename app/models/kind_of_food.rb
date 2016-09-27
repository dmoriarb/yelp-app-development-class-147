class KindOfFood < ApplicationRecord
  # Direct associations

  belongs_to :tags

  belongs_to :restaurants

  # Indirect associations

  # Validations

end
