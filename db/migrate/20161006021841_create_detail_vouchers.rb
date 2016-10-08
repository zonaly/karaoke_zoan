class CreateDetailVouchers < ActiveRecord::Migration
  def change
    create_table :detail_vouchers do |t|
      t.references :voucher, index: true, foreign_key: true
      t.references :detail_order, index: true, foreign_key: true
      t.integer :cantProd

      t.timestamps null: false
    end
  end
end
