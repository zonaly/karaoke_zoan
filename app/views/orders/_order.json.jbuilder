json.extract! order, :id, :name, :local_id, :room_id, :user_id, :fechPedido, :created_at, :updated_at
json.url order_url(order, format: :json)