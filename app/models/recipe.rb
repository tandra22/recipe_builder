class Recipe < ApplicationRecord
  # Direct associations

  has_many   :recipe_ingredients,
             :class_name => "Ingredient",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
