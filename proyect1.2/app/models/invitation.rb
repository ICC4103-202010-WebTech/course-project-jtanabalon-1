class Invitation < ApplicationRecord
  has_one :user
  belongs_to :event
  has_one :vote
end
