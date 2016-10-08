class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :nomUser
      t.text :apUser
      t.date :feReg
      t.date :feNac
      t.text :email
      t.text :nomUser
      t.text :clave

      t.timestamps null: false
    end
  end
end
