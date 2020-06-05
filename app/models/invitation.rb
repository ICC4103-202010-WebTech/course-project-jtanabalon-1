class Invitation < ApplicationRecord
  belongs_to :user_id
  belongs_to :event_id
  has_one :vote, :dependent => :destroy
  validates :vote, uniqueness: true
end
