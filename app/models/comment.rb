class Comment < ApplicationRecord
  belongs_to :user_id
  belongs_to :event_id
  has_one_attached :images

end
