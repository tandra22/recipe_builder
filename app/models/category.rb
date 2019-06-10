class Category < ApplicationRecord
  # Direct associations

  has_many   :pantries,
             :dependent => :destroy

  belongs_to :ingredient,
             :class_name => "Item"

  # Indirect associations

  # Validations

end
