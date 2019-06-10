class CreatePantries < ActiveRecord::Migration[5.1]
  def change
    create_table :pantries do |t|
      t.string :name
      t.integer :item_id
      t.integer :user_id
      t.boolean :available_flag
      t.integer :quantity_available
      t.integer :category_id
      t.date :expiration_date

      t.timestamps
    end
  end
end
