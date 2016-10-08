json.extract! detail_voucher, :id, :voucher_id, :detail_order_id, :cantProd, :created_at, :updated_at
json.url detail_voucher_url(detail_voucher, format: :json)