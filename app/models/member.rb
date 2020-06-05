class Member < ApplicationRecord
  belongs_to :user_id
  belongs_to :organization_id
end
