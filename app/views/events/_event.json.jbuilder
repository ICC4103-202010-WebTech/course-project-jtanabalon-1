json.extract! event, :id, :name, :location, :privacity, :user_id, :organization_id, :created_at, :updated_at
json.url event_url(event, format: :json)
