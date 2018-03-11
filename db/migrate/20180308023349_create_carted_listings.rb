class CreateCartedListings < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_listings do |t|

      t.timestamps
    end
  end
end
