class DetailVoucher < ActiveRecord::Base
  belongs_to :voucher
  belongs_to :detail_order
end
