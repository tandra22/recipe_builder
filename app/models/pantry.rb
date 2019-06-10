class Pantry < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :category

  belongs_to :ingredient,
             :class_name => "Item",
             :foreign_key => "item_id"

  # Indirect associations

  # Validations

end
