class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :nomE
      t.text :apEm
      t.integer :numDni
      t.text :direc
      t.text :numtef
      t.date :fenac
      t.references :local, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
