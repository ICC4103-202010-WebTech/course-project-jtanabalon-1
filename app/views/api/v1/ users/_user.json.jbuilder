json.extract! user, :id, :name, :email, :password, :created_at, :updated_at
json.url api_v1_users_url(user, format: :json)
