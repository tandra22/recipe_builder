class Category < ApplicationRecord
  # Direct associations

  belongs_to :ingredient,
             :class_name => "Item"

  # Indirect associations

  # Validations

end
