class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.references :local, index: true, foreign_key: true
      t.integer :aforoS
      t.text :availabilityS

      t.timestamps null: false
    end
  end
end
