class Tag < ApplicationRecord
  # Direct associations

  has_many   :kind_of_foods,
             :foreign_key => "tags_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
