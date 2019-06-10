class Item < ApplicationRecord
  # Direct associations

  has_many   :categories,
             :foreign_key => "ingredient_id",
             :dependent => :destroy

  has_many   :pantries,
             :dependent => :destroy

  has_many   :recipe_details,
             :class_name => "Ingredient",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
