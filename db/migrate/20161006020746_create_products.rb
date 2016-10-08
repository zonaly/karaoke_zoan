class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.decimal :price
      t.references :local, index: true, foreign_key: true
      t.text :availabilityP

      t.timestamps null: false
    end
  end
end
