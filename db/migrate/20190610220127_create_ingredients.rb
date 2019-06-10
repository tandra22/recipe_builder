class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.boolean :essential_flag
      t.integer :quantity
      t.string :measurement_units
      t.integer :item_id
      t.integer :recipe_id
      t.string :name

      t.timestamps
    end
  end
end
