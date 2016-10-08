json.extract! voucher, :id, :room_id, :user_id, :local_id, :feemision, :employee_id, :subtotal, :igv, :mtoTotal, :created_at, :updated_at
json.url voucher_url(voucher, format: :json)