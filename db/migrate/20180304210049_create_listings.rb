class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :neighborhood
      t.integer :sq_footage
      t.integer :price
      t.text :description
      t.integer :bedrooms
      t.decimal :baths
      t.string :agent
      t.string :style

      t.timestamps
    end
  end
end
