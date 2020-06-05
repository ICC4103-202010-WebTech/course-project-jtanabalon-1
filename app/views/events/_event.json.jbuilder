json.extract! event, :id, :title, :description, :star_date, :privacy, :created_at, :updated_at
json.url event_url(event, format: :json)
