json.extract! detail_order, :id, :order_id, :product_id, :song_id, :created_at, :updated_at
json.url detail_order_url(detail_order, format: :json)