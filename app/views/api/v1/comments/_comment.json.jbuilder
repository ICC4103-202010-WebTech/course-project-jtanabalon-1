json.extract! comment, :id, :user_id, :event_id, :message, :created_at, :updated_at
json.url ap1_v1_comment_url(comment, format: :json)
