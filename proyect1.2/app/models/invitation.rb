class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :vote
  validates :vote_id, uniqueness: true
end
