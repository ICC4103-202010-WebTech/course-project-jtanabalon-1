json.extract! event, :id, :name, :location, :privacity, :user_id, :organization_id, :created_at, :updated_at
json.url api_v1_events_url(event, format: :json)
