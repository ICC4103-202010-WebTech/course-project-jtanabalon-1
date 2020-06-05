class Comment < ApplicationRecord
  belongs_to :user_id
  belongs_to :event_id
end
