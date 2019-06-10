class Item < ApplicationRecord
  # Direct associations

  has_many   :recipe_details,
             :class_name => "Ingredient",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
