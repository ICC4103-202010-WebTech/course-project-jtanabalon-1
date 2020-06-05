json.extract! profile, :id, :name, :lastname, :picture, :bio, :location, :user_id_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
