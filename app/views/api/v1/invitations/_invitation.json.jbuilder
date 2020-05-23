json.extract! invitation, :id, :user_id, :event_id, :vote_id, :created_at, :updated_at
json.url api_v1_invitation_url(invitation, format: :json)
