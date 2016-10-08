class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.references :local, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.date :fechPedido

      t.timestamps null: false
    end
  end
end
