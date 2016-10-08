class CreateDetailOrders < ActiveRecord::Migration
  def change
    create_table :detail_orders do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.integer :cntProd
      t.decimal :subtotal

      t.timestamps null: false
    end
  end
end
