class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.text :name
      t.text :brand
      t.integer :price
      t.text :description
      t.text :specification

      t.timestamps
    end
  end
end
