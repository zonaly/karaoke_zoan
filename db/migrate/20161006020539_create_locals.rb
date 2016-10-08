class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.references :district, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
