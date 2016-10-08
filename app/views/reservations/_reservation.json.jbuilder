json.extract! reservation, :id, :feRerser, :local_id, :event_id, :room_id, :state, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)