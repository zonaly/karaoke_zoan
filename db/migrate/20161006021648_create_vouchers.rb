class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.references :room, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :local, index: true, foreign_key: true
      t.date :feemision
      t.references :employee, index: true, foreign_key: true
      t.decimal :subtotal
      t.decimal :igv
      t.decimal :mtoTotal

      t.timestamps null: false
    end
  end
end
