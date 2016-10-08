json.extract! event, :id, :name, :description, :local_id, :district_id, :availability, :created_at, :updated_at
json.url event_url(event, format: :json)